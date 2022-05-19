from urllib import response
from django.http import HttpResponse, HttpResponseRedirect
from django.contrib.auth import login, logout, authenticate
from django.contrib import messages
from django.shortcuts import redirect, render
from requests import Response

from app_authApi.models import *
from app_homeApi.models import *


def login_required(request):
    return HttpResponse("<script>$('#loginModal').modal('show')</script>")


def RegisterView(request):
    if request.method == 'POST':
        is_freelancer = is_project_manager = is_company = False
        account_type = request.POST.get('account_type', 'none')
        print("Account type --> ",account_type)
        email = request.POST.get('emailaddress-register', '')
        username = request.POST.get('username-register', '')
        password = request.POST.get('password-register', '')
        password_repeat = request.POST.get('password-repeat-register', '')
        next = request.POST.get('next', '/')
        print("Next is: " + next)
        if password == password_repeat:
            if User.objects.filter(username=username).exists():
                messages.error(
                    request, 'Account already exists with this phone: ' + str(username))
                next = request.POST.get('next', '/')
                return HttpResponseRedirect(next)
            elif User.objects.filter(email=email).exists():
                messages.error(
                    request, 'Account already exists with this email: ' + str(email))
                next = request.POST.get('next', '/')
                return HttpResponseRedirect(next)
            else:
                if account_type == 'freelancer':
                    is_freelancer = True
                    is_project_manager = False
                    is_company = False
                elif account_type == 'project_manager':
                    is_freelancer = False
                    is_project_manager = True
                    is_company = False
                elif account_type == 'company':
                    is_freelancer = False
                    is_project_manager = False
                    is_company = True
                print(is_freelancer)
                print(is_project_manager)
                print(is_company)
                print(email)
                print(username)
                print(password)
                try:
                    user = User.objects.create(
                        username=username,
                        is_freelancer=is_freelancer,
                        is_project_manager=is_project_manager,
                        is_company=is_company,
                        email=email
                    )
                    user.set_password(password)
                    user.save()
                    print('User created')
                    if user is not None:
                        if user.is_freelancer:
                            if Freelancer.objects.filter(user=user).exists():
                                print('Freelancer already exists')
                            else:
                                print('Freelancer not exists')
                                Freelancer.objects.create(
                                    user=user,
                                    username = username,
                                    email = email
                                )
                                print('Freelancer created')
                        elif user.is_project_manager:
                            if ProjectManager.objects.filter(user=user).exists():
                                print('Project Manager already exists')
                            else:
                                print('Project Manager not exists')
                                ProjectManager.objects.create(
                                    user=user,
                                    username = username,
                                    email = email
                                )
                                print('Project Manager created')
                        elif user.is_company:
                            if Company.objects.filter(user=user).exists():
                                print('Company already exists')
                            else:
                                print('Company not exists')
                                Company.objects.create(
                                    user=user,
                                    username = username,
                                    email = email
                                )
                                print('Company created')
                        messages.success(request, 'Account created successfully!')
                        print(user)
                        login(request, user)
                        messages.success(
                            request, 'Sign up successful: ' + str(username))
                        print('Yeah logged in!')
                        next = request.POST.get('next', '/')
                        return HttpResponseRedirect(next)
                    else:
                        print('user not authenticated')
                        messages.error(request, 'Password is incorrect')
                        next = request.POST.get('next', '/')
                        return HttpResponseRedirect(next)
                except Exception as e:
                    print(e)
                    messages.error(
                        request, 'Failed to create account: ' + str(username))
                    next = request.POST.get('next', '/')
                    return HttpResponseRedirect(next)
        else:
            messages.error(request, 'Passwords do not match')
            next = request.POST.get('next', '/')
            return HttpResponseRedirect(next)
    else:
        return render(request, 'customer-signup.html')


def LoginView(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        # print(User.objects.filter(username=username, password=password).values('username'))
        print(username)
        print(password)
        try:
            get_user = User.objects.get(username=username)
            print(get_user)
        except:
            get_user = None
            print(get_user)
        if get_user is not None:
            print('user found')
            user = authenticate(request, username=username, password=password)
            if user is not None:
                print('user authenticated')
                login(request, user)
                messages.success(request, 'Login successful'+str(username))
                print('Yeah logged in!')
                next = request.POST.get('next', '/')
                return HttpResponseRedirect(next)
            else:
                print('user not authenticated')
                messages.error(request, 'Password is incorrect')
                next = request.POST.get('next', '/')
                return HttpResponseRedirect(next)
        else:
            messages.error(request, 'User not found!')
            next = request.POST.get('next', '/')
            return HttpResponseRedirect(next)
    else:
        return render(request, 'customer-login.html')


def LogoutView(request):
    logout(request)
    return redirect('/')
