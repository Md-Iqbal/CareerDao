from audioop import reverse
from http.client import HTTPResponse
from queue import PriorityQueue
from xml.etree.ElementTree import fromstring
from django.views.decorators.csrf import csrf_exempt
from rest_framework.parsers import JSONParser
from django.http import JsonResponse, HttpResponseRedirect
from app_homeApi.serializers import CompanySerializer, FreelancerSerializer, MessageSerializer, ProjectManagerSerializer
from hitcount.views import HitCountDetailView
import datetime
from logging import exception
from multiprocessing import context
from django.shortcuts import get_object_or_404, render
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.db.models import Q
from appJobAPI.models import AppliedJob, PostedJob
import json

from app_authApi.models import User
from app_authApi.permissions import AllowAny
from app_homeApi.models import *
from appJobAPI.forms import JobPostForm
from .models import *

# Create your views here.

# @login_required
def HomeView(request):
    ### get data after email verification
    user = request.user
    if User.objects.filter(id=user.id).exists():
        user = User.objects.get(id=user.id)
        return render(request, 'index.html', {'user': user})
    return render(request, 'index.html')

@login_required
def ProfileSettingsView(request, id):
    try:
        user = User.objects.get(id=id)
        print(user)
        if user.is_company:
            print('company')
            context = {
                'user': user,
                'info': Company.objects.get(user=user),
            }
        elif user.is_freelancer:
            print('freelancer')
            context = {
                'user': user,
                'info': Freelancer.objects.get(user=user),
            }
        elif user.is_project_manager:
            print('project manager')
            context = {
                'user': user,
                'info': ProjectManager.objects.get(user=user),
            }
        else:
            print('admin')
            context = {
                'user': user,
                'info': None,
            }
        print(context)
        return render(request, 'dashboard-settings.html', context)
    except Exception as e:
        print(e)
        return render(request, 'pages-404.html')

def CompanyView(request):
    return render(request, 'browse-companies.html')

@login_required
def LiveChatView(request):
    admin = User.objects.filter(is_admin=True)
    known_user = User.objects.all().exclude(id = request.user.id).exclude(id__in=admin)
    known_user_profile = []
    for user in known_user:
        if user.is_freelancer:
            known_user_profile.append(Freelancer.objects.get(user=user))
            #last message for each user in known_user
            known_user_profile[-1].last_message = Message.objects.filter(
                Q(sender=user, receiver=request.user) | Q(sender=request.user, receiver=user)
            ).last()
        elif user.is_company:
            known_user_profile.append(Company.objects.get(user=user))
            #last message for each user in known_user
            known_user_profile[-1].last_message = Message.objects.filter(
                Q(sender=user, receiver=request.user) | Q(sender=request.user, receiver=user)
            ).last()

        elif user.is_project_manager:
            known_user_profile.append(ProjectManager.objects.get(user=user))
    context = {
        'known_user': known_user,
        'known_user_profile': known_user_profile,
    }
    return render(request, 'dashboard-messages.html', context)

#message load API for reciever and sender
@login_required
def MessageLoadView(request, receiver_id, sender_id):
    print("Sender++++++++Receiver =+++> ",receiver_id, sender_id)
    if request.method == 'GET':
        print("get")
        try:
            print("try")
            receiver = User.objects.get(id=receiver_id)
            sender = User.objects.get(id=sender_id)
            messages = Message.objects.filter(Q(receiver=receiver, sender=sender) | Q(receiver=sender, sender=receiver)).order_by('created_at')
            if sender.is_freelancer:
                sender_profile = Freelancer.objects.get(user=sender)
                sender_serializer = FreelancerSerializer(sender_profile)
            elif sender.is_company:
                sender_profile = Company.objects.get(user=sender)
                sender_serializer = CompanySerializer(sender_profile)
            elif sender.is_project_manager:
                sender_profile = ProjectManager.objects.get(user=sender)
                sender_serializer = ProjectManagerSerializer(sender_profile)
            if receiver.is_freelancer:
                receiver_profile = Freelancer.objects.get(user=receiver)
                receiver_serializer = FreelancerSerializer(receiver_profile)
            elif receiver.is_company:
                receiver_profile = Company.objects.get(user=receiver)
                receiver_serializer = CompanySerializer(receiver_profile)
            elif receiver.is_project_manager:
                receiver_profile = ProjectManager.objects.get(user=receiver)
                receiver_serializer = ProjectManagerSerializer(receiver_profile)

            serializer = MessageSerializer(messages, many=True)
            print("Serializer data ==========>>>>>> ",serializer.data)
            return JsonResponse({
                'status': 'success',
                'data': serializer.data,
                'sender': sender_serializer.data,
                'receiver': receiver_serializer.data,
                
            })
        except Exception as e:
            print("Exception occured +++++> ", e)
            return JsonResponse({'error': 'User not found'}, status=404)
    elif request.method == 'POST':
        print('post')
        data = request.POST
        message = data.get('message')
        sender = User.objects.get(id=data.get('sender')).username
        sender_id = User.objects.get(id=data.get('sender'))
        print("Sender ===========> ", sender)
        receiver = User.objects.get(id=data.get('receiver')).username
        receiver_id = User.objects.get(id=data.get('receiver'))
        print("Receiver ===========> ", receiver)
        data = {
            'message': message,
            'sender': sender,
            'receiver': receiver,
        }

        serializer = MessageSerializer(data=data)
        try:
            print("try block")
            if serializer.is_valid():
                print("serializer is valid")
                serializer.save()
                messages = Message.objects.filter(Q(receiver=receiver_id.id, sender=sender_id.id) | Q(receiver=sender_id.id, sender=receiver_id.id)).order_by('created_at')
                if sender_id.is_freelancer:
                    sender_profile = Freelancer.objects.get(user=sender_id.id)
                    sender_serializer = FreelancerSerializer(sender_profile)
                elif sender_id.is_company:
                    sender_profile = Company.objects.get(user=sender_id.id)
                    sender_serializer = CompanySerializer(sender_profile)
                elif sender_id.is_project_manager:
                    sender_profile = ProjectManager.objects.get(user=sender_id.id)
                    sender_serializer = ProjectManagerSerializer(sender_profile)
                if receiver_id.is_freelancer:
                    receiver_profile = Freelancer.objects.get(user=receiver_id.id)
                    receiver_serializer = FreelancerSerializer(receiver_profile)
                elif receiver_id.is_company:
                    receiver_profile = Company.objects.get(user=receiver_id.id)
                    receiver_serializer = CompanySerializer(receiver_profile)
                elif receiver_id.is_project_manager:
                    receiver_profile = ProjectManager.objects.get(user=receiver_id.id)
                    receiver_serializer = ProjectManagerSerializer(
                        receiver_profile)
                serializer = MessageSerializer(messages, many=True)
                return JsonResponse({
                    'status': 'success',
                    'data': serializer.data,
                    'sender': sender_serializer.data,
                    'receiver': receiver_serializer.data,
                })
            return JsonResponse(serializer.errors, status=400)
        except Exception as e:
            print("Exception occured +++++> ",e)
            return JsonResponse({'error': 'User not found'}, status=404)


def ChatDeleteView(request, receiver_id, sender_id):
    print("try")
    receiver = User.objects.get(id=receiver_id)
    sender = User.objects.get(id=sender_id)
    messages = Message.objects.filter(Q(receiver=receiver, sender=sender) | Q(receiver=sender, sender=receiver))
    messages.delete()
    print("messages deleted")
    url = '/chat/'
    return HttpResponseRedirect(url)

def ProjectAcceptView(request):
    return render(request, 'project-accept.html')


def ProjectAwardView(request):
    return render(request, 'project-award.html')


def ProjectBiddingView(request):
    return render(request, 'bid-project.html')


def ProjectMilestoneView(request):
    return render(request, 'project-milestone.html')


def FeatureJobOfflineGridView(request):
    jobs = PostedJob.objects.filter(is_active=True)
    #paginator
    page = request.GET.get("page")
    paginator = Paginator(jobs, 12)
    try:
        jobs = paginator.page(page)
    except PageNotAnInteger:
        jobs = paginator.page(1)
    except EmptyPage:
        jobs = paginator.page(paginator.num_pages)
    context = {
        'jobs': jobs,
        'page': page,
    }
    return render(request, 'jobs-grid-layout-full-page.html', context)


def FeatureJobOfflineListView(request):
    return render(request, 'feature-job-offline-list.html')


def FeatureJobOnlineListView(request):
    return render(request, 'feature-job-online.html')


def JobDetailView(request, id):
    print(id)
    try:
        job = PostedJob.objects.get(id=id)
        company = Company.objects.get(id = job.company_name.id)
        #similar type jobs without current job
        similar_jobs = PostedJob.objects.filter(job_type=job.job_type).exclude(id=job.id)
        print(company)
        #if request.user is applied for this job
        if AppliedJob.objects.filter(job_id=job.id, email=request.user.email).exists():
            print('applied if exists')
            applied_job = AppliedJob.objects.filter(job_id=job.id, email=request.user.email)            
            print("Applied job ",applied_job)
            context = {
                'job': job,
                'company': company,
                'similar_jobs': similar_jobs,
                'applied_job': applied_job,
            }
        else:
            context = {
                'job': job,
                'company': company,
                'similar_jobs': similar_jobs,
                #null to applied_job
                'applied_job': None,
            }
        print(context)
        return render(request, 'single-job-page.html', context)
    except exception as e:
        print('job not found   ', e) 
        return render(request, 'pages-404.html')


def FeatureJobOnline_with_SidebarView(request):
    return render(request, 'feature-job-online-with-sidebar.html')


def FeatureJobOnline_with_MapView(request):
    return render(request, 'feature-job-online-with-map.html')


def PostJobOfflineView(request):
    return render(request, 'post-job-offline.html')


def PostJobOnlineView(request):
    if request.user.is_company or request.user.is_project_manager:
        company_info = Company.objects.get(user=request.user)
        return render(request, 'dashboard-post-a-job.html', {'company_info': company_info})
    else:
        return render(request, 'pages-404.html')


def FreelancerGridView(request):
    return render(request, 'browse-freelancer-grid.html')


def FreelancerGrid_with_SidebarView(request):
    freelancers = Freelancer.objects.all()
    context = {
        'freelancers': freelancers,
    }

    return render(request, 'freelancers-grid-layout-full-page.html', context)

# @login_required
class FreelancerProfileView(HitCountDetailView):
    model = Freelancer
    template_name = 'single-freelancer-profile.html'
    context_object_name = 'profile'
    pk = 'id'
    # set to True to count the hit
    count_hit = True

    def get_context_data(self, **kwargs):
        context = super(FreelancerProfileView, self).get_context_data(**kwargs)
        context.update({
            'popular_posts': Freelancer.objects.order_by('-hit_count_generic__hits')[:3],
        })
        return context


def FreelancerListView(request):
    return render(request, 'browse-freelancer-list.html')


def FreelancerList_with_SidebarView(request):
    return render(request, 'browse-freelancer-list-with-sidebar.html')


def DisputeView(request):
    return render(request, 'dispute-page.html')

@login_required
def DashboardView(request):
    user = User.objects.get(id=request.user.id)
    if user.is_company:
        info = Company.objects.get(user=request.user)
    elif user.is_freelancer:
        info = Freelancer.objects.get(user=request.user)
    elif user.is_project_manager:
        info = ProjectManager.objects.get(user=request.user)
    else:
        info = None
    job = PostedJob.objects.filter(is_active=True)
    total_job = job.count()
    appointed_job = AppliedJob.objects.filter(appointed=True, email=request.user.email)
    total_appointed_job = appointed_job.count()
    # review = Review.objects.filter(user=request.user)
    this_month_job = PostedJob.objects.filter(updated_at__month=datetime.datetime.now().month)
    total_this_month_job = this_month_job.count()
    applied_job = AppliedJob.objects.filter(user_id=request.user.id)
    total_applied_job = applied_job.count()
    context = {
        'user': user,
        'info': info,
        'job': job,
        'total_job': total_job,
        'applied_job': applied_job,
        'total_applied_job': total_applied_job,
        # 'review': review,
        'this_month_job': this_month_job,
        'total_this_month_job': total_this_month_job,
        'appointed_job': appointed_job,
        'total_appointed_job': total_appointed_job,
    }
    return render(request, 'dashboard.html', context)


class BlogSinglePostView(HitCountDetailView):
    model = News
    template_name = 'pages-blog-post.html'
    # context_object_name = 'news'
    pk = 'id'
    # set to True to count the hit
    count_hit = True

    def get_context_data(self, **kwargs):
        print('get_context_data')
        print(kwargs)
        # check if immediate previous news exists

        if News.objects.filter(id=self.object.id - 1).exists():
            previous_news = News.objects.get(id=self.object.id - 1)
        else:
            previous_news = None
        # check if immediate next news exists
        if News.objects.filter(id=self.object.id + 1).exists():
            next_news = News.objects.get(id=self.object.id + 1)
        else:
            next_news = None
        releted_news = News.objects.filter(topic=self.object.topic).exclude(id=self.object.id)
        if releted_news is None:
            releted_news = None
        context = super(BlogSinglePostView, self).get_context_data(**kwargs)
        context.update({
            'trending_news': News.objects.order_by('-hit_count_generic__hits')[:3],
            'previous_post': previous_news,
            'next_post': next_news,
            'releted_news': releted_news,
        })
        return context




def BlogGridView(request):
    news = News.objects.all()
    featured = News.objects.filter(is_featured=True)
    top_news = News.objects.order_by('-hit_count_generic__hits')[:3]
    recent_news = News.objects.order_by('-created_at')[:4]
    context = {
        'news': news,
        'featured': featured,
        'top_news': top_news,
        'recent_news': recent_news,
    }
    return render(request, 'pages-blog.html', context)


def Blog_with_SidebarView(request):
    return render(request, 'blog-grid-sidebar.html')


def ProfileView(request):
    return render(request, 'freelancer-profile-portfolio.html')


def UnknownURLView(request):
    return render(request, 'pages-404.html')

def EmailVerificationNotificationView(request):
    return render(request, 'email-verification-notification.html')

def ContactView(request):
    return render(request, 'pages-contact.html')
