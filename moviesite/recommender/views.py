from django.shortcuts import get_object_or_404, render
from django.http import HttpResponseRedirect, HttpResponse
from django.core.urlresolvers import reverse

from .models import RecommenderChoice, RecommenderQuestion

def index(request):
    context = {}
    return render(request, 'recommender/index.html', context)
