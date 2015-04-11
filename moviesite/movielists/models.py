from django.db import models
from django.contrib.auth.models import User

class Movie(models.Model):
    CRIME = 'CR'
    THRILLER = 'TH'
    SCIENCE_FICTION = 'SF'
    DRAMA = 'DR'
    COMEDY = 'CM'
    ADVENTURE = 'AD'

    CLUSTER_A = 'A'
    CLUSTER_B = 'B'
    CLUSTER_C = 'C'
    CLUSTER_D = 'D'
    CLUSTER_E = 'E'

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

    CLUSTER_CHOICES = (
            (CLUSTER_A, 'Cluster A'),
            (CLUSTER_B, 'Cluster B'),
            (CLUSTER_C, 'Cluster C'),
            (CLUSTER_D, 'Cluster D'),
            (CLUSTER_E, 'Cluster E'),
            )

    cluster = models.CharField(max_length = 1,
            choices = CLUSTER_CHOICES,
            default = CLUSTER_A)

    title = models.CharField(max_length = 50)
    pub_date = models.DateTimeField('date published')
    duration = models.CharField(max_length = 50)
    director = models.CharField(max_length = 50)
    actors = models.TextField(max_length = 400)
    plot = models.TextField(max_length = 1000)
    image = models.ImageField(upload_to="movielists/movie_images/",blank=True)

    def __str__(self):
        return "%s, %s" % (self.title, self.pub_date.year)
