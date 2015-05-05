from django.db import models
from django.contrib.auth.models import User
from django.conf import settings
from PIL import Image


class Movie(models.Model):
    CRIME = 'CR'
    THRILLER = 'TH'
    SCIENCE_FICTION = 'SF'
    DRAMA = 'DR'
    COMEDY = 'CM'
    ADVENTURE = 'AD'

    YES = 'Y'
    NO = 'N'

    GENRE_CHOICES = (
            (CRIME, 'Crime'),
            (THRILLER, 'Thriller'),
            (SCIENCE_FICTION, 'Science Fiction'),
            (DRAMA, 'Drama'),
            (COMEDY, 'Comedy'),
            (ADVENTURE, 'Adventure'),
            )

    genre = models.CharField(max_length = 2,
            choices = GENRE_CHOICES,
            default = DRAMA)

    VIOLENCE_CHOICES = (
            (YES, 'Yes'),
            (NO, 'No'),
            )

    KILLING_CHOICES = (
            (YES, 'Yes'),
            (NO, 'No'),
            )


    violence = models.CharField(max_length = 1,
            choices = VIOLENCE_CHOICES,
            default = NO)

    killing = models.CharField(max_length = 1,
            choices = KILLING_CHOICES,
            default = NO)


    title = models.CharField(max_length = 50)
    pub_date = models.DateTimeField('date published')
    duration = models.IntegerField(default = 0)
    director = models.CharField(max_length = 50)
    actors = models.TextField(max_length = 400)
    plot = models.TextField(max_length = 1000)
    rating_count = models.IntegerField(default = 0)
    rating_sum = models.IntegerField(default = 0)
    total_rating = models.IntegerField(default = 0)
    image = models.ImageField(upload_to="",
            blank=True)

    def __str__(self):
        return "%s, %s" % (self.title, self.pub_date.year)

class Comment(models.Model):
    movie = models.ForeignKey(Movie)
    person = models.CharField(max_length = 50)
    comment_text = models.TextField(max_length = 200)
    comment_pub_date = models.DateTimeField('date published')

    def __str__(self):
        return "from: %s, movie: %s" % (self.person, self.movie)

