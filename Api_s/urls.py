from django.urls import path

from . import views

urlpatterns = [
    path('job/', views.CreateJobList.as_view(), name='CreateJobAPI'),
    path('job-details/<pk>/', views.JobDetails.as_view(), name='JobDetails'),
    path('apply-job/', views.ApplyJobList.as_view(), name='ApplyJobList'),
    path('apply-job-details/<pk>/', views.ApplyJobDetails.as_view(), name='ApplyJobDetails'),
]
