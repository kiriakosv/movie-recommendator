from django.shortcuts import get_object_or_404, render
from django.http import HttpResponseRedirect, HttpResponse
from django.core.urlresolvers import reverse

from .models import RecommenderChoice, RecommenderQuestion

def index(request):
    question_list = RecommenderQuestion.objects.all()
    context = {'question_list': question_list}
    return render(request, 'recommender/index.html', context)

def results(request):
    context = {}
    return render(request, 'recommender/results.html', context)
