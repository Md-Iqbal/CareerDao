from django.db import models
from django.contrib.auth.models import AbstractUser
class User(AbstractUser):
    username = models.CharField(max_length=25, unique=True, db_index=True)
    email = models.EmailField(max_length=30, unique=True, db_index=True)
    is_company = models.BooleanField(default=False)
    is_project_manager = models.BooleanField(default=False)
    is_freelancer = models.BooleanField(default=False)
    is_admin = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return self.email
