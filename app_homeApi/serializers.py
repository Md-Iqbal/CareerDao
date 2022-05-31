from django.conf import settings
from .models import *
from app_authApi.models import User
from rest_framework import serializers
from drf_writable_nested import WritableNestedModelSerializer

# User = settings.AUTH_USER_MODEL


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


class MessageSerializer(serializers.ModelSerializer):
    sender = serializers.SlugRelatedField(many=False, slug_field='username', queryset=User.objects.all())
    receiver = serializers.SlugRelatedField(many=False, slug_field='username', queryset=User.objects.all())

    class Meta:
        model = Message
        fields = ['id', 'sender', 'receiver', 'message', 'created_at']
        read_only_fields = ('id', 'created_at')
