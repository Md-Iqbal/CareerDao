from django.contrib import messages
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.db.models.functions import Coalesce
# Create your views here.
from django.http import JsonResponse, HttpResponseRedirect
from rest_framework import generics
from rest_framework.authentication import BasicAuthentication
from rest_framework.exceptions import ValidationError
from rest_framework.generics import get_object_or_404
from .serializers import *
from .models import *
from app_authApi.permissions import (
    IsAdmin,
    IsCompany,
    IsFreelancer,
    IsProjectManager,
    IsAuthenticated,
    IsOwner,
    IsOwnerOrReadOnly,
    AllowAny,
)


class JobList(generics.ListAPIView):
    """
    List of all jobs
    """

    permission_classes = (AllowAny,)
    serializer_class = PostedJobSerializer
    queryset = PostedJob.objects.all()

class JobCreate(generics.CreateAPIView):
    """
    List all jobs, or create a new job.
    """
    authentication_classes = (BasicAuthentication,)
    permission_classes = (IsAuthenticated, IsCompany, IsProjectManager,)
    serializer_class = PostedJobSerializer
    queryset = PostedJob.objects.all()

    def perform_create(self, serializer):
        serializer.save(user=self.request.user)


class JobDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    Retrieve, update or delete a job.
    """
    authentication_classes = (BasicAuthentication,)
    permission_classes = (IsAuthenticated, IsCompany, IsProjectManager,)
    serializer_class = PostedJobSerializer
    queryset = PostedJob.objects.all()


class JobListByUser(generics.ListAPIView):
    """
    List of all jobs posted by a user
    """
    authentication_classes = (BasicAuthentication,)
    permission_classes = (AllowAny,)
    serializer_class = PostedJobSerializer
    queryset = PostedJob.objects.all()

    def get_queryset(self):
        user = self.request.user
        return PostedJob.objects.filter(user=user)