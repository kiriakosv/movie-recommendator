from django.conf.urls import patterns, include, url
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = patterns('',
    url(r'^recommender/', include('recommender.urls', namespace = "recommender")),
    url(r'^polls/', include('polls.urls', namespace = "polls")),
    url(r'^', include('mainp.urls', namespace = "mainp")),
    url(r'^movielists/', include('movielists.urls', namespace = "movielists")),
    url(r'^admin/', include(admin.site.urls)),
)

urlpatterns += patterns('',
        url(r'^media/(?P<path>.*)$', 'django.views.static.serve', {
            'document_root': settings.MEDIA_ROOT,
        }),
)

