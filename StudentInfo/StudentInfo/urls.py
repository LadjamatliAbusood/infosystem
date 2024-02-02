"""StudentInfo URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('index', views.Insertrecord),
    path('profile', views.profile, name='profile'),
    path('login/', views.user_login, name='login'),
    path('logout/', views.user_logout, name='logout'),
    path('all_students/', views.all_students, name='all_students'),
    path('classmatelist/', views.classmate_list, name='classmate_list'),
    path('changepassword/', views.PasswordChangeView.as_view(template_name='changepassword.html', success_url='/password_change_done/'), name='changepassword'),
    path('password_change_done/', views.PasswordChangeDoneView.as_view(template_name='password_change_done.html'), name='password_change_done'),
    path('edit_profile/', views.edit_profile, name='edit_profile'),
    path('search_result/', views.search_result, name='search_result'),
    

]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
