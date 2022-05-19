from django.forms import ValidationError
from django.shortcuts import render
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

    def perform_create(self, serializer):
        print("serializer data ==> ",serializer.validated_data)
        try:
            serializer.save(is_active=True, appointed=False)
        except:
            raise ValidationError(
                'Failed to add job')
    
class ApplyJobDetails(generics.RetrieveUpdateDestroyAPIView):
    # permission_classes = (AllowAny,)
    serializer_class = AppliedJobSerializer
    queryset = AppliedJob.objects.all()


