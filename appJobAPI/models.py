from django.db import models


from app_authApi.models import User
# Create your models here.


class PostedJob(models.Model):
    Job_Type_Choice = (
        ('OFF_LINE', 'Off-line'),
        ('REMOTE', 'Remote'),
        ('PROJECT', 'Project'),
    )

    id = models.AutoField(primary_key=True)
    company_name = models.ForeignKey(
        'app_homeApi.Company',
        on_delete=models.CASCADE,
        related_name='posted_job',
        null=True,
        blank=True,
    )
    name = models.CharField(max_length=100)
    designation = models.TextField(max_length=500, null=True, blank=True)
    skills = models.TextField(max_length=500, null=True, blank=True)
    experience = models.IntegerField(default=0, null=True, blank=True)
    vacancy = models.IntegerField(default=1, null=True, blank=True)
    apply_last_date = models.DateField(null=True, blank=True)
    job_description = models.TextField(max_length=500, null=True, blank=True)
    place = models.CharField(max_length=100, null=True, blank=True)
    salary = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    salary2 = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    job_type = models.CharField(
        max_length=10,
        choices=Job_Type_Choice,
        default='PROJECT',
        null=True,
        blank=True,
    )
    job_category = models.CharField(max_length=100, null=True, blank=True)
    educational_qualification = models.CharField(max_length=25, null=True, blank=True)
    minimum_age = models.IntegerField(default=12, null=True, blank=True)
    maximum_age = models.IntegerField(default=60, null=True, blank=True)
    contact_number = models.IntegerField(default=0)
    contact_email = models.EmailField(max_length=30)
    is_active = models.BooleanField(default=True)
    document_image1 = models.ImageField(upload_to='documents/', null=True, blank=True)
    document_image2 = models.ImageField(upload_to='documents/', null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name


class AppliedJob(models.Model):
    id = models.AutoField(primary_key=True)
    user = models.ForeignKey(User, related_name='applied_jobs', on_delete=models.CASCADE)
    job = models.ForeignKey(PostedJob, related_name='applied_jobs', on_delete=models.CASCADE)
    full_name = models.CharField(max_length=100, null=True, blank=True)
    email = models.EmailField(max_length=30, null=True, blank=True)
    cv = models.FileField(upload_to='cv/')
    is_active = models.BooleanField(default=True)
    applied_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    appointed = models.BooleanField(default=False)
    resigned = models.BooleanField(default=False)

    def __str__(self):
        return self.full_name
