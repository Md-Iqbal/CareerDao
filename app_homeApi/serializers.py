from django.conf import settings
from .models import *
from rest_framework import serializers
from drf_writable_nested import WritableNestedModelSerializer

User = settings.AUTH_USER_MODEL


class CompanySerializer(serializers.ModelSerializer):
    class Meta:
        model = Company
        fields = '__all__'
        read_only_fields = ('id', 'user', 'created_at', 'updated_at')


class FreelancerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Freelancer
        fields = '__all__'
        read_only_fields = ('id', 'user', 'created_at', 'updated_at')


class ProjectManagerSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProjectManager
        fields = '__all__'
        read_only_fields = ('id', 'user', 'created_at', 'updated_at')