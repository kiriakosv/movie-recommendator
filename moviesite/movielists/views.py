from django.shortcuts import render, get_object_or_404
import datetime
from django.http import HttpResponseRedirect, HttpResponse
from django.core.urlresolvers import reverse

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
    total_rating = 0
    if movie.rating_count != 0:
        total_rating = movie.rating_sum/movie.rating_count
    return render(request, 'movielists/movie_details.html', {'movie': movie, 'total_rating': total_rating})

def movie_comments(request, movie_id):
    movie = get_object_or_404(Movie, pk=movie_id)
    comments = movie.comment_set.all().order_by('-comment_pub_date')
    context = {'movie': movie, 'comments': comments}
    return render(request, 'movielists/movie_comments.html', context)

def make_a_comment(request, movie_id):
    movie = get_object_or_404(Movie, pk=movie_id)
    if request.POST['user_name'] == "" or request.POST['comment_body'] == "":
        return render(request, 'movielists/movie_comments.html',
                {'movie':movie, 'error_message': "One or both fields empty.",
                    })
    else:
        new_comment = movie.comment_set.create(person=request.POST['user_name'],
               comment_text=request.POST['comment_body'],
               comment_pub_date = datetime.datetime.now())
        new_comment.save()
        return HttpResponseRedirect(reverse('movielists:movie_comments',
            args=(movie.id,)))
