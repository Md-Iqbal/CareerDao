from django.db import models


from app_authApi.models import User
# Create your models here.


class PostedJob(models.Model):
    company_name = models.CharField(max_length=25, unique=True, db_index=True)
    company_profile = models.EmailField(max_length=30, unique=True, db_index=True)
    name = models.CharField(max_length=25, db_index=True)
    designation = models.BooleanField(default=False)
    skills = models.CharField(max_length=25, unique=True, db_index=True)
    experience = models.IntegerField(default=0)
    vacancy = models.IntegerField(default=0)
    job_description = models.CharField(max_length=25, unique=True, db_index=True)
    place = models.CharField(max_length=25, unique=True, db_index=True)
    salary = models.DecimalField(max_digits=10, decimal_places=2, default=0)
    job_type = models.CharField(max_length=25, unique=True, db_index=True)
    educational_qualification = models.CharField(max_length=25, unique=True, db_index=True)
    contact_number = models.IntegerField(default=0)
    contact_email = models.EmailField(max_length=30, unique=True, db_index=True)
    is_active = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name

class AppliedJob(models.Model):
    user = models.ForeignKey(User, related_name='applied_jobs', on_delete=models.CASCADE)
    job = models.ForeignKey(PostedJob, related_name='applied_jobs', on_delete=models.CASCADE)
    name = models.CharField(max_length=25, db_index=True)
    company = models.CharField(max_length=25, db_index=True)
    is_active = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name