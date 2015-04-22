# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('movielists', '0021_auto_20150416_1702'),
    ]

    operations = [
        migrations.AddField(
            model_name='movie',
            name='rating_count',
            field=models.IntegerField(default=0),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='movie',
            name='rating_sum',
            field=models.IntegerField(default=0),
            preserve_default=True,
        ),
    ]
