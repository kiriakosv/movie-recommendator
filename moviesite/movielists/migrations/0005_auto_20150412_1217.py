# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('movielists', '0004_movie_cluster'),
    ]

    operations = [
        migrations.AlterField(
            model_name='movie',
            name='image',
            field=models.ImageField(upload_to=b'movielists/static/movielists/images', blank=True),
            preserve_default=True,
        ),
    ]
