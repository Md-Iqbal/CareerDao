from re import search
from urllib import response
from django.shortcuts import render
from django.urls import reverse
from urllib3 import Retry
from rest_framework import exceptions
from rest_framework import views,generics,status
from rest_framework.response import Response
from rest_framework.exceptions import AuthenticationFailed
from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework.permissions import IsAuthenticated, AllowAny
from rest_framework_simplejwt.authentication import JWTAuthentication
from rest_framework import generics, status
import jwt
import datetime

from app_authApi.utils import Util

from .serializers import UserInfoSerializer
from .models import User
from app_authApi import serializers
from django.contrib.sites.shortcuts import get_current_site



class RegisterView(generics.CreateAPIView):
    permission_classes = (AllowAny,)
    serializer_class = UserInfoSerializer
    queryset = User.objects.all()
    
    def create(self, request, *args, **kwargs):
        data = request.data
        if data['password'] != data['password_repeat']:
            raise exceptions.ValidationError('Passwords do not match')
        if not search(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b', data['email']):
            raise exceptions.ValidationError('Email is not valid')
        if not data['username'].isalnum():
            raise exceptions.ValidationError('Username must be alphanumeric')
        
        serializer = self.get_serializer(data=data)
        serializer.is_valid(raise_exception=True)
        user = self.perform_create(serializer)
        if user:
            if data['is_freelancer'] == '"true"' and data['is_company'] == '"false"' and data['is_project_manager'] == '"false"':
                user.is_freelancer = True
                user.is_company = False
                user.is_project_manager = False
            elif data['is_freelancer'] == '"false"' and data['is_company'] == '"true"' and data['is_project_manager'] == '"false"':
                user.is_freelancer = False
                user.is_company = True
                user.is_project_manager = False
            elif data['is_freelancer'] == '"false"' and data['is_company'] == '"false"' and data['is_project_manager'] == '"true"':
                user.is_freelancer = False
                user.is_company = False
                user.is_project_manager = True
            user.username = data['username']
            user.is_verified = False
            user.set_password(data['password'])
            user.save()
            headers = self.get_success_headers(serializer.data)
            print("Headers ----> ", headers)
            refresh = RefreshToken.for_user(user)
            current_site = get_current_site(self.request).domain
            relative_path = reverse('VerifyEmailView')
            absolute_path = "http://{}{}?token={}".format(
                current_site, relative_path, refresh.access_token)
            print(absolute_path)
            email_body = "Hi " + user.username+"!!!\n\n, Welcome to CareerDao.\n\n"\
            "Please click on the link below to verify your email address.\n\n"\
            + absolute_path + "\n\n"\
            "If you did not request this email, please ignore it.\n\n"\
            "Thanks,\n\n"\
            "CareerDao Team"
            data = {
                'email_to': user.email,
                'email_subject': 'Verify your email',
                'email_body': email_body
            }
            Util.send_email(data)
            ### role
            role = None
            if user.is_freelancer:
                role = 'freelancer'
            elif user.is_project_manager:
                role = 'project_manager'
            elif user.is_company:
                role = 'company'
            response = Response()
            response.data = {
                'status': 'success',
                'access_token': str(refresh.access_token),
                'refresh_token': str(refresh),
                'token_type': 'Bearer',
                'user_id': user.id,
                'username': user.username,
                'role': role
            }
            response.status_code = status.HTTP_201_CREATED
            response.headers = headers
            return response
        else:
            raise exceptions.ValidationError('User already exists')
    
    def perform_create(self, serializer):
        return serializer.save()

    def get_success_headers(self, data):
        try:
            return {'Location': str(data['url'])}
        except (TypeError, KeyError):
            return {}
    

class VerifyEmailView(views.APIView):
    permission_classes = (AllowAny,)
    def get(self, request, *args, **kwargs):
        try:
            token = request.GET.get('token')
            print("Token ----> ", token)
            payload = jwt.decode(token, 'SECRET_KEY', algorithms=['HS256'])
            user = User.objects.get(id=payload['user_id'])
            if user:
                user.is_email_verified = True
                user.save()
                serializer = UserInfoSerializer(user)
                return Response({'access_token': str(token), 'user info': serializer.data}, status=status.HTTP_200_OK)
            else:
                raise exceptions.ValidationError('User does not exist')
        except jwt.ExpiredSignatureError:
            raise exceptions.ValidationError('Token has expired')
        except jwt.InvalidSignatureError:
            raise exceptions.ValidationError('Token is invalid')
        except jwt.DecodeError:
            raise exceptions.ValidationError('Token is invalid')
        except Exception as e:
            raise exceptions.ValidationError(str(e))
    