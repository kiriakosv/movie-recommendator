# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Movie',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('genre', models.CharField(default=b'DR', max_length=2, choices=[(b'CR', b'Crime'), (b'TH', b'Thriller'), (b'SF', b'Science Fiction'), (b'DR', b'Drama'), (b'CM', b'Comedy'), (b'AD', b'Adventure')])),
                ('title', models.CharField(max_length=50)),
                ('pub_date', models.DateTimeField(verbose_name=b'date published')),
                ('duration', models.CharField(max_length=50)),
                ('director', models.CharField(max_length=50)),
                ('actors', models.TextField(max_length=400)),
                ('plot', models.TextField(max_length=1000)),
                ('image', models.ImageField(upload_to=b'movie_images/')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
