from django import forms
from django.contrib.auth.models import User
from appJobAPI.models import PostedJob


class JobPostForm(forms.ModelForm):
    class Meta:
        model = PostedJob
        fields = [
            'company_name',
            'name',
            'designation',
            'skills',
            'experience',
            'vacancy',
            'job_description',
            'place',
            'salary',
            'job_type',
            'educational_qualification',
            'minimum_age',
            'maximum_age',
            'contact_number',
            'contact_email',
            'document_image1',
            'document_image2',
        ]



