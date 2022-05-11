from django.db import models
from django.contrib.auth.models import(
    AbstractBaseUser, BaseUserManager
    )


class UserManager(BaseUserManager):
    def create_user(self, email):
        if not email:
            raise ValueError('User must have an email address')

        user = self.model(
            email=self.normalize_email(email),
        )
        user.set_password("")
        user.is_customer = True
        user.is_admin = False
        user.is_staff = False
        user.is_superuser = False
        user.is_active = True
        user.save()
        return user

    def create_superuser(self, email, password):
        user = self.create_user(email, password=password)
        user.is_admin = True
        user.is_staff = True
        user.is_superuser = True
        user.is_active = True
        user.save()
        return user
class User(AbstractBaseUser):
    username = models.CharField(max_length=25, unique=True, db_index=True)
    email = models.EmailField(max_length=30, unique=True, db_index=True)
    is_verified = models.BooleanField(default=False)
    is_company = models.BooleanField(default=False)
    is_project_manager = models.BooleanField(default=False)
    is_freelancer = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    
    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['username']

    objects = UserManager()
    def __str__(self):
        return self.email
