from django.shortcuts import render


# Each view receives a browser request and returns the matching HTML page
def home_page(request):
    return render(request, 'home.html')


def about_page(request):
    return render(request, 'about.html')


def projects_page(request):
    return render(request, 'projects.html')


def contact_page(request):
    return render(request, 'contact.html')
