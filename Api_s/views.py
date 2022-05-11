from django.forms import ValidationError
from django.shortcuts import render
from rest_framework import generics
from appJobAPI.models import PostedJob
from appJobAPI.serializers import PostedJobSerializer

# Create your views here.


class CreateJobList(generics.ListCreateAPIView):
    # permission_classes = (IsAuthenticated,)
    serializer_class = PostedJobSerializer

    def get_queryset(self):
        try:
            queryset = PostedJob.objects.all()
            return queryset
        except:
            raise ValidationError('You do not have access')

    def perform_create(self, serializer):
        if self.request.user.is_admin:
            try:
                serializer.save()
            except:
                raise ValidationError(
                    'Failed to add job')
        else:
            raise ValidationError(
                'You do not have access to create job')


class JobDetails(generics.RetrieveUpdateDestroyAPIView):
    # permission_classes = (IsAuthenticated,)
    serializer_class = PostedJobSerializer
    queryset = PostedJob.objects.all()
