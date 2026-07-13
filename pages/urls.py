from django.urls import path

from . import views


# app_name gives these URLs a clear pages: prefix inside the HTML templates
app_name = 'pages'

urlpatterns = [
    # The empty path is the website Home page
    path('', views.home_page, name='home'),
    path('about/', views.about_page, name='about'),
    path('projects/', views.projects_page, name='projects'),
    path('contact/', views.contact_page, name='contact'),
]
