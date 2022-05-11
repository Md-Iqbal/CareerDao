from django.urls import path
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)
from . import views
urlpatterns = [
    path('sign-up/', views.RegisterView.as_view(), name='sign-up'),
    path('token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    # path('sign-in/', views.LoginView.as_view(), name='LoginView'),
    path('email-verify/', views.VerifyEmailView.as_view(), name='VerifyEmailView'),
    path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    # path('logout/', views.LogoutView.as_view(), name='LogoutView'),
]
