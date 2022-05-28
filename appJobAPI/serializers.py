from django.conf import settings
from drf_writable_nested.serializers import WritableNestedModelSerializer
from rest_framework import serializers

from .models import *

User = settings.AUTH_USER_MODEL


class PostedJobSerializer(serializers.ModelSerializer):
    class Meta:
        model = PostedJob
        fields = '__all__'
        read_only_fields = ('id', 'created_at', 'updated_at',)


#### take cv & other details from user for apply job
class AppliedJobSerializer(WritableNestedModelSerializer):
    class Meta:
        model = AppliedJob
        fields = '__all__'
        read_only_fields = ('id', 'applied_at', 'updated_at',)
