from multiprocessing import context
from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from appJobAPI.models import PostedJob

from app_authApi.models import User
from app_authApi.permissions import AllowAny
from app_homeApi.models import *
from appJobAPI.forms import JobPostForm
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage

# Create your views here.

# @login_required
def HomeView(request):
    ### get data after email verification
    user = request.user
    if User.objects.filter(id=user.id).exists():
        user = User.objects.get(id=user.id)
        return render(request, 'index.html', {'user': user})
    return render(request, 'index.html')

# def RegisterView(request):
#     return render(request, 'register.html')


def LiveChatView(request):
    return render(request, 'dashboard-messages.html')


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
        context = {
            'job': job,
            'company': company,
            'similar_jobs': similar_jobs,
        }
        print(context)
        return render(request, 'single-job-page.html', context)
    except:
        return render(request, 'pages-404.html')


def FeatureJobOnline_with_SidebarView(request):
    return render(request, 'feature-job-online-with-sidebar.html')


def FeatureJobOnline_with_MapView(request):
    return render(request, 'feature-job-online-with-map.html')


def PostJobOfflineView(request):
    return render(request, 'post-job-offline.html')


def PostJobOnlineView(request):
    if request.user.is_company:
        company_info = Company.objects.get(user=request.user)
        return render(request, 'dashboard-post-a-job.html', {'company_info': company_info})
    else:
        return render(request, 'pages-404.html')


def FreelancerGridView(request):
    return render(request, 'browse-freelancer-grid.html')


def FreelancerGrid_with_SidebarView(request):
    return render(request, 'browse-freelancer-grid-with-sidebar.html')


def FreelancerListView(request):
    return render(request, 'browse-freelancer-list.html')


def FreelancerList_with_SidebarView(request):
    return render(request, 'browse-freelancer-list-with-sidebar.html')


def DisputeView(request):
    return render(request, 'dispute-page.html')


def DashboardView(request):
    return render(request, 'dashboard.html')


def BlogSinglePostView(request):
    return render(request, 'blog.html')


def BlogGridView(request):
    return render(request, 'blog-grid.html')


def Blog_with_SidebarView(request):
    return render(request, 'blog-grid-sidebar.html')


def ProfileView(request):
    return render(request, 'freelancer-profile-portfolio.html')


def UnknownURLView(request):
    return render(request, 'pages-404.html')

def EmailVerificationNotificationView(request):
    return render(request, 'email-verification-notification.html')