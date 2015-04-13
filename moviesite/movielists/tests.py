import datetime

from django.test import TestCase
from django.utils import timezone
from django.core.urlresolvers import reverse

from .models import Movie, Comment

def create_movie(title, genre, duration, director, actors, plot, cluster):
    time = timezone.now()
    return Movie.objects.create(title=title, genre=genre, duration=duration,
            director=director, actors=actors, plot=plot, pub_date=time,
            cluster=cluster)

class MovieTests(TestCase):

    def test_empty_view(self):
        """
        If no movies exist, an appropriate message should be displayed.
        """
        response = self.client.get(reverse('movielists:movies_by_genre',
            args=('SF',)))
        self.assertEqual(response.status_code, 200)
        self.assertContains(response, "No movies are available.")

    def test_view_with_wrong_movie_id(self):
        """
        If a doesn't exist, a 404 page is displayed.
        """
        response = self.client.get(reverse('movielists:movie_details',
            args=(4,)))
        self.assertEqual(response.status_code, 404)

    def test_view_with_existing_movie_no_image(self):
        """
        If no movies exist, an appropriate message should be displayed.
        """
        a_movie = create_movie('fubar', 'SF', 'fubar', 'fubar',
                'fubar', 'fubar', 'A')
        response = self.client.get(reverse('movielists:movie_details',
            args=(a_movie.id,)))
        self.assertEqual(response.status_code, 200)
        self.assertContains(response, a_movie.title)

class CommentTests(TestCase):
    def test_movie_with_no_comments(self):
        """
        If a movie has no comments, an appropriate message should be displayed.
        """
        a_movie = create_movie('fubar', 'SF', 'fubar', 'fubar',
                'fubar', 'fubar', 'A')
        response = self.client.get(reverse('movielists:movie_comments',
            args=(a_movie.id,)))
        self.assertEqual(response.status_code, 200)
        self.assertContains(response, "There are no comments posted.")
