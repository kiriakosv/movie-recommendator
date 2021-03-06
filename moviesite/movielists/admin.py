from django.contrib import admin
from .models import Movie, Comment

class MovieAdmin(admin.ModelAdmin):
    list_diplay = ('title', 'pub_date')
    search_fields = ['title']

admin.site.register(Movie, MovieAdmin)
admin.site.register(Comment)
