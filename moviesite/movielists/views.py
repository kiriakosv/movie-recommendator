from django.shortcuts import render

def index(request):
    context = {}
    return render(request, 'movielists/index.html', context)

