from hitcount.views import HitCountDetailView
import datetime
from logging import exception
from multiprocessing import context
from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from appJobAPI.models import AppliedJob, PostedJob

from app_authApi.models import User
from app_authApi.permissions import AllowAny
from app_homeApi.models import *
from appJobAPI.forms import JobPostForm
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage

# Create your views here.

@login_required
def HomeView(request):
    ### get data after email verification
    user = request.user
    if User.objects.filter(id=user.id).exists():
        user = User.objects.get(id=user.id)
        return render(request, 'index.html', {'user': user})
    return render(request, 'index.html')


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
    if request.user.is_company:
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