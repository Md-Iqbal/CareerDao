from .models import User
from rest_framework.permissions import BasePermission, SAFE_METHODS


class IsAdmin(BasePermission):
    def has_permission(self, request, view):
        return request.user and request.user.is_admin


class IsCompany(BasePermission):
    def has_permission(self, request, view):
        return request.user and request.user.is_company


class IsFreelancer(BasePermission):
    def has_permission(self, request, view):
        return request.user and request.user.is_freelancer


class IsProjectManager(BasePermission):
    def has_permission(self, request, view):
        return request.user and request.user.is_project_manager


class IsAuthenticated(BasePermission):
    def has_permission(self, request, view):
        return request.user and request.user.is_authenticated


class IsOwner(BasePermission):
    def has_object_permission(self, request, view, obj):
        return obj.user == request.user


class IsOwnerOrReadOnly(BasePermission):
    def has_object_permission(self, request, view, obj):
        if request.method in SAFE_METHODS:
            return True
        return obj.user == request.user

class AllowAny(BasePermission):
    def has_permission(self, request, view):
        return True