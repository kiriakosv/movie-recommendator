from django.shortcuts import render

from .models import Movie

def index(request):
    context = {}
    return render(request, 'movielists/index.html', context)

def movies_by_genre(request, genre):
    movies_of_selected_genre = Movie.objects.all().filter(genre = genre)
    context = {'movies_of_selected_genre': movies_of_selected_genre}
    return render(request, 'movielists/movies_by_genre.html', context)
