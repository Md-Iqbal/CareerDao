from django.urls import include, path
from . import views
urlpatterns = [
    path('', views.HomeView, name="HomeView"),
    path('<int:id>/', views.ProfileSettingsView, name="ProfileSettingsView"),
#     path('/', views.HomeView, name="HomeView2"),
#     path('register/', views.RegisterView, name="RegisterView"),
    path('company/', views.CompanyView, name="CompanyView"),
    path('chat/', views.LiveChatView, name="LiveChatView"),
    path('project-accept/', views.ProjectAcceptView, name="ProjectAcceptView"),
    path('project-award/', views.ProjectAwardView, name="ProjectAwardView"),
    path('project-bid/', views.ProjectBiddingView, name="ProjectBiddingView"),
    path('project-milestone/', views.ProjectMilestoneView, name="ProjectMilestoneView"),
    path('job/', views.FeatureJobOfflineGridView,name="FeatureJobOfflineGridView"),
    path('job-detail/<int:id>/', views.JobDetailView, name="JobDetailView"),
    path('offline-job-list/', views.FeatureJobOfflineListView,
         name="FeatureJobOfflineListView"),
    path('online-job-list/', views.FeatureJobOnlineListView,
         name="FeatureJobOnlineListView"),
    path('online-job-sidebar/', views.FeatureJobOnline_with_SidebarView,
         name="FeatureJobOnline_with_SidebarView"),
    path('online-job-map/', views.FeatureJobOnline_with_MapView,
         name="FeatureJobOnline_with_MapView"),
    path('post-job-offline/', views.PostJobOfflineView, name="PostJobOfflineView"),
    path('post-job-online/', views.PostJobOnlineView, name="PostJobOnlineView"),
    path('freelancer-grid/', views.FreelancerGridView, name="FreelancerGridView"),
    path('freelancer-grid-sidebar/', views.FreelancerGrid_with_SidebarView,
         name="FreelancerGrid_with_SidebarView"),
    path('freelancer-profile/<int:pk>/', views.FreelancerProfileView.as_view(), name="FreelancerProfileView"),
    path('freelancer-list/', views.FreelancerListView, name="FreelancerListView"),
    path('freelancer-list-sidebar/', views.FreelancerList_with_SidebarView,
         name="FreelancerList_with_SidebarView"),
    path('dispute/', views.DisputeView, name="DisputeView"),
    path('dashboard/', views.DashboardView, name="DashboardView"),
    path('blog-single-post/', views.BlogSinglePostView, name="BlogSinglePostView"),
    path('blog-grid/', views.BlogGridView, name="BlogGridView"),
    path('blog-sidebar/', views.Blog_with_SidebarView,
         name="Blog_with_SidebarView"),
    path('profile/', views.ProfileView, name="ProfileView"),
    path('404/', views.UnknownURLView, name="UnknownURLView"),
    path('verify-message/', views.EmailVerificationNotificationView, name="EmailVerificationNotificationView"),
    path('hitcount/', include(('hitcount.urls', 'hitcount'), namespace='hitcount')),
]
