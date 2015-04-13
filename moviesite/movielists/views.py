from django.shortcuts import render, get_object_or_404

from .models import Movie

def index(request):
    context = {}
    return render(request, 'movielists/index.html', context)

def movies_by_genre(request, genre):
    movies_of_selected_genre = Movie.objects.all().filter(genre = genre)
    context = {'movies_of_selected_genre': movies_of_selected_genre}
    return render(request, 'movielists/movies_by_genre.html', context)

def movie_details(request, movie_id):
    movie = get_object_or_404(Movie, pk=movie_id)
    return render(request, 'movielists/movie_details.html', {'movie': movie})

def movie_comments(request, movie_id):
    movie = get_object_or_404(Movie, pk=movie_id)
    comments = movie.comment_set.all()
    context = {'movie': movie, 'comments': comments}
    return render(request, 'movielists/movie_comments.html', context)
