from django.contrib import messages
from django.forms import ValidationError
from django.http import HttpResponseRedirect
from django.shortcuts import get_object_or_404, render
from app_authApi.models import User
from rest_framework import generics
from rest_framework.authentication import BasicAuthentication
from appJobAPI.models import AppliedJob, PostedJob
from appJobAPI.serializers import AppliedJobSerializer, PostedJobSerializer
from app_authApi.permissions import (
    AllowAny,
    IsAuthenticated,
    IsCompany,
    IsAdmin,
    IsProjectManager,
    IsFreelancer,
)

# Create your views here.


class CreateJobList(generics.ListCreateAPIView):
    authentication_classes = (BasicAuthentication,)
    # permission_classes = (IsAuthenticated, IsCompany, IsAdmin,)
    serializer_class = PostedJobSerializer
    queryset = PostedJob.objects.all()

    def get_queryset(self):
        try:
            queryset = PostedJob.objects.all()
            return queryset
        except:
            raise ValidationError('You do not have access')

    def perform_create(self, serializer):
        print(serializer.validated_data)
        try:
            serializer.save(is_active=True)
        except:
            raise ValidationError(
                'Failed to add job')

class JobDetails(generics.RetrieveUpdateDestroyAPIView):
    authentication_classes = (BasicAuthentication,)
    permission_classes = (AllowAny,)
    serializer_class = PostedJobSerializer
    queryset = PostedJob.objects.all()


class ApplyJobList(generics.ListCreateAPIView):
    # permission_classes = (IsAuthenticated, IsFreelancer, IsCompany, IsProjectManager,)
    serializer_class = AppliedJobSerializer
    queryset = AppliedJob.objects.all()

    def get_queryset(self):
        try:
            queryset = AppliedJob.objects.all()
            return queryset
        except:
            raise ValidationError('You do not have access')


    def post(self, request, *args, **kwargs):
        last_url = request.META.get('HTTP_REFERER')
        #get the posted job id from post data
        job_id = int(request.data.get('job_id'))
        user_id = int(request.data.get('user_id'))
        cv = request.data.get('CV_File')
        name = request.data.get('name')
        email = request.data.get('emailaddress')
        print("Data of application ===>>>>      ",job_id, user_id, cv, name, email)
        data = {
            'job': job_id,
            'user': user_id,
            'cv': cv,
            'full_name': name,
            'email': email,
            'is_active': True,
            'appointed': False,
        }
        job = PostedJob.objects.filter(id=job_id)
        user = AppliedJob.objects.filter(user_id=user_id)
        if job:
            if user:
                print("User already applied for this job")
                messages.error(request, 'You have already applied for this job')
                return HttpResponseRedirect(last_url)
            else:
                try:
                    print("apply try block")
                    serializer = AppliedJobSerializer(data=data)
                    if serializer.is_valid():
                        print("serializer is valid")
                        serializer.save()
                        print("serializer saved")
                        messages.success(request, 'You have successfully applied for this job')
                        return HttpResponseRedirect(last_url)
                    else:
                        print("serializer is not valid", serializer.errors)
                        messages.error(request, 'Failed to apply for this job')
                        return HttpResponseRedirect(last_url)
                except:
                    print("apply except block")
                    print("Failed to apply for this job")
                    messages.error(request, 'Failed to apply for this job')
                    return HttpResponseRedirect(last_url)
        else:
            print("Job not found")
            messages.error(request, 'Job not found')
            return HttpResponseRedirect(last_url)
    
class ApplyJobDetails(generics.RetrieveUpdateDestroyAPIView):
    # permission_classes = (AllowAny,)
    serializer_class = AppliedJobSerializer
    queryset = AppliedJob.objects.all()

