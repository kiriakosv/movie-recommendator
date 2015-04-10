from django.conf.urls import url

from . import views

urlpatterns = [
        url(r'^$', views.index, name = 'index'),
        url(r'^(?P<genre>\D+)/$', views.movies_by_genre,
            name='movies_by_genre'),
]
