from django.urls import path

from . import views

urlpatterns = [
    path('job/', views.CreateJobList.as_view(), name='CreateJobAPI'),
    path('job-details/', views.JobDetails.as_view(), name='JobDetails'),
]