from email.mime import image
from django.db import models
from hitcount.models import HitCountMixin, HitCount
from django.contrib.contenttypes.fields import GenericRelation
from app_authApi.models import User

# Create your models here.

class Freelancer(models.Model):
    id = models.AutoField(primary_key=True)
    user = models.OneToOneField(User, on_delete=models.CASCADE, related_name='freelancer', null=True, blank=True)
    username = models.CharField(max_length=25, unique=True, db_index=True)
    email = models.EmailField(max_length=30, unique=True, db_index=True)
    image = models.ImageField(upload_to='images/', default='images/default.png')
    first_name = models.CharField(max_length=25, null=True, blank=True)
    last_name = models.CharField(max_length=25, null=True, blank=True)
    phone = models.CharField(max_length=25, null=True, blank=True)
    address = models.CharField(max_length=25, null=True, blank=True)
    occupation = models.CharField(max_length=25, null=True, blank=True)
    company = models.ForeignKey(
        'Company',
        on_delete=models.CASCADE,
        related_name='freelancer',
        null=True,
        blank=True
        )
    document_name = models.CharField(max_length=25, null=True, blank=True)
    document_number = models.CharField(max_length=25, null=True, blank=True)
    document_image = models.ImageField(upload_to='documents/', null=True, blank=True)
    hit_count_generic = GenericRelation(HitCount, object_id_field='object_pk',
                                        related_query_name='hit_count_generic_relation')
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.username
    
class Company(models.Model):
    id = models.AutoField(primary_key=True)
    user = models.OneToOneField(User, on_delete=models.CASCADE, related_name='company', null=True, blank=True)
    username = models.CharField(max_length=25, unique=True, db_index=True)
    email = models.EmailField(max_length=30, unique=True, db_index=True)
    logo = models.ImageField(upload_to='images/', default='images/default.png')
    image = models.ImageField(upload_to='images/', default='images/default.png')
    company_name = models.CharField(max_length=25, null=True, blank=True)
    company_description = models.TextField(max_length=500, null=True, blank=True)
    company_address = models.CharField(max_length=25, null=True, blank=True)
    company_phone = models.CharField(max_length=25, null=True, blank=True)
    company_website = models.CharField(max_length=25, null=True, blank=True)
    country = models.CharField(max_length=50, null=True, blank=True)
    hit_count_generic = GenericRelation(HitCount, object_id_field='object_pk',
                                        related_query_name='hit_count_generic_relation')
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)



    def __str__(self):
        return self.username

class ProjectManager(models.Model):
    id = models.AutoField(primary_key=True)
    user = models.OneToOneField(User, on_delete=models.CASCADE, related_name='project_manager', null=True, blank=True)
    username = models.CharField(max_length=25, unique=True, db_index=True)
    email = models.EmailField(max_length=30, unique=True, db_index=True)
    image = models.ImageField(upload_to='images/', default='images/default.png')
    first_name = models.CharField(max_length=25, null=True, blank=True)
    last_name = models.CharField(max_length=25, null=True, blank=True)
    phone = models.CharField(max_length=25, null=True, blank=True)
    address = models.CharField(max_length=25, null=True, blank=True)
    occupation = models.CharField(max_length=25, null=True, blank=True)
    company = models.ForeignKey(
        Company,
        on_delete=models.CASCADE,
        related_name='project_manager',
        null=True,
        blank=True
    )
    document_name = models.CharField(max_length=25, null=True, blank=True)
    document_number = models.CharField(max_length=25, null=True, blank=True)
    document_image = models.ImageField(upload_to='documents/', null=True, blank=True)
    hit_count_generic = GenericRelation(HitCount, object_id_field='object_pk',
                                        related_query_name='hit_count_generic_relation')
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.username


class News(models.Model):
    id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=50, null=True, blank=True)
    description = models.TextField(max_length=1500, null=True, blank=True)
    qoute = models.CharField(max_length=200, null=True, blank=True)
    image = models.ImageField(upload_to='images/', null=True, blank=True)
    is_featured = models.BooleanField(default=False)
    hit_count_generic = GenericRelation(HitCount, object_id_field='object_pk',
                                        related_query_name='hit_count_generic_relation')
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title


class Message(models.Model):
    id = models.AutoField(primary_key=True)
    sender = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        related_name='sender',
        null=True,
        blank=True
    )
    receiver = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        related_name='receiver',
        null=True,
        blank=True
    )
    message = models.TextField(max_length=500, null=True, blank=True)
    seen = models.BooleanField(default=False)
    delivered = models.BooleanField(default=False)
    typing = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)
    
    class Meta:
        ordering = ['-created_at']

    # def __str__(self):
    #     return self.message
