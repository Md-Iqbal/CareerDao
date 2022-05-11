from django.shortcuts import render
from django.contrib.auth.decorators import login_required

# Create your views here.

# @login_required
def HomeView(request):
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
    return render(request, 'jobs-grid-layout-full-page.html')


def FeatureJobOfflineListView(request):
    return render(request, 'feature-job-offline-list.html')


def FeatureJobOnlineListView(request):
    return render(request, 'feature-job-online.html')


def FeatureJobOnline_with_SidebarView(request):
    return render(request, 'feature-job-online-with-sidebar.html')


def FeatureJobOnline_with_MapView(request):
    return render(request, 'feature-job-online-with-map.html')


def PostJobOfflineView(request):
    return render(request, 'post-job-offline.html')


def PostJobOnlineView(request):
    return render(request, 'dashboard-post-a-job.html')


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