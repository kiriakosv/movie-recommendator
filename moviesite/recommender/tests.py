from django.test import TestCase
from django.core.urlresolvers import reverse

from .models import RecommenderQuestion, RecommenderChoice

class RecommenderTests(TestCase):
    def test_questions_appear(self):
        """
        If questions exist, display them
        """
        response = self.client.get(reverse('recommender:index'))
        self.assertEqual(response.status_code, 200)
        self.assertContains(response, "age")
