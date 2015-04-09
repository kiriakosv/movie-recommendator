from django.contrib import admin
from .models import Movie

class MovieAdmin(admin.ModelAdmin):
    list_diplay = ('title', 'pub_date')

admin.site.register(Movie, MovieAdmin)
