from django.urls import path

from . import views
app_name = 'Product'

urlpatterns = [
    path('job-create/', views.JobCreate.as_view(), name='job-create'),
]
