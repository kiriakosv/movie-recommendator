from django.conf.urls import patterns, include, url
from django.contrib import admin

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'moviesite.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'^polls/', include('polls.urls', namespace = "polls")),
    url(r'^mainp/', include('mainp.urls', namespace = "mainp")),
    url(r'^movielists/', include('movielists.urls', namespace = "movielists")),
    url(r'^admin/', include(admin.site.urls)),
)
