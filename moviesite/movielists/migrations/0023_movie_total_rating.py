# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('movielists', '0022_auto_20150422_1227'),
    ]

    operations = [
        migrations.AddField(
            model_name='movie',
            name='total_rating',
            field=models.IntegerField(default=0),
            preserve_default=True,
        ),
    ]
