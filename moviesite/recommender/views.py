from django.shortcuts import get_object_or_404, render
from django.http import HttpResponseRedirect, HttpResponse
from django.core.urlresolvers import reverse

from .models import RecommenderChoice, RecommenderQuestion
from movielists.models import Movie

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
        if trunct != "LE" and trunct != "AG" and trunct != "VI":
            value = int(request.POST[a_key])
            counter[trunct] += value

    all_movies = Movie.objects.all()

    filtered_movies_length = []
    if request.POST['LE1'] == "N":
    # If a user doesn't like lengthy movies, filter out movies with
    # duration greater or equal than 105 minutes.
        for a_movie in all_movies:
            if a_movie.duration < 105:
                filtered_movies_length.append(a_movie)
    else:
        filtered_movies_length = all_movies

    filtered_movies_violence = []
    if request.POST['VI1'] == "N":
    # If a user doesn't like violent movies, filter out movies with
    # violence.
        for a_movie in filtered_movies_length:
            if a_movie.violence == "N":
                filtered_movies_violence.append(a_movie)
    else:
        filtered_movies_violence = filtered_movies_length

    filtered_movies_final = []
    maximum = 0
    for a_key in counter.keys():
        if counter[a_key] > maximum:
            maximum = counter[a_key]

    for a_movie in filtered_movies_violence:
        if counter[a_movie.genre] >= maximum - 3 and counter[a_movie.genre] >= 0:
            filtered_movies_final.append(a_movie)

    context = {'filtered_movies_final': filtered_movies_final}

    return render(request, 'recommender/results.html', context)
