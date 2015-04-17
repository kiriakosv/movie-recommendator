from django.shortcuts import get_object_or_404, render
from django.http import HttpResponseRedirect, HttpResponse
from django.core.urlresolvers import reverse

from .models import RecommenderChoice, RecommenderQuestion

def index(request):
    question_list = RecommenderQuestion.objects.all()
    context = {'question_list': question_list}
    return render(request, 'recommender/index.html', context)

def results(request):
    counter = {"CR": 0, "TH": 0, "SF": 0, "DR": 0, "CM": 0, "AD": 0}

    post_keys = request.POST.keys()
    for a_key in post_keys:
        trunct = a_key[0:2]
        if trunct == "cs":
            continue
        if trunct != "LE" and trunct != "AG":
            value = int(request.POST[a_key])
            counter[trunct] += value

    a = []
    for a_key in request.POST.keys():
        a_key = a_key[0:2]
        if a_key not in ['cs', 'LE', 'AG']:
            a.append(counter[a_key])
    context = {'a': a}

    return render(request, 'recommender/results.html', context)
