from django.urls import path
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
    TokenVerifyView
)
from . import views
urlpatterns = [
    path('sign-up/', views.RegisterView, name='sign-up'),
    path('token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('sign-in/', views.LoginView, name='sign-in'),
    # path('email-verify/', views.VerifyEmailView.as_view(), name='VerifyEmailView'),
    path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('token/verify/', TokenVerifyView.as_view(), name='token_verify'),
    path('logout/', views.LogoutView, name='logout'),
]
