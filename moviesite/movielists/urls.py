from django.conf.urls import url, patterns
from django.conf import settings

from . import views

urlpatterns = [
        url(r'^$', views.index, name = 'index'),
        url(r'^(?P<genre>\D+)/$', views.movies_by_genre,
            name='movies_by_genre'),
        url(r'^(?P<movie_id>[0-9]+)/details/$', views.movie_details,
            name='movie_details'),
        url(r'^(?P<movie_id>[0-9]+)/comments/$', views.movie_comments,
            name='movie_comments'),
        url(r'^(?P<movie_id>[0-9]+)/submit_comment/$', views.make_a_comment,
            name='make_a_comment'),
        url(r'^(?P<movie_id>[0-9]+)/details/rated$', views.rate,
            name='rate'),
        url(r'^top-10/$', views.top_rated, name='top_rated'),
]
