import datetime

from django.test import TestCase
from django.utils import timezone
from django.core.urlresolvers import reverse

from .models import Movie

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
        If a movie exists, a page with the movie's info is displayed.
        """
        response = self.client.get(reverse('movielists:movie_details',
            args=(4,)))
        self.assertEqual(response.status_code, 404)
