from django.conf.urls import url

from . import views

urlpatterns = [
        url(r'^$', views.index, name = 'index'),
        url(r'^(?P<genre>\D+)/$', views.movies_by_genre,
            name='movies_by_genre'),
        url(r'^(?P<movie_id>[0-9]+)/details/$', views.movie_details,
            name='movie_details'),
]
