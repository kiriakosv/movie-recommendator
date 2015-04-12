# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('movielists', '0009_auto_20150412_1322'),
    ]

    operations = [
        migrations.AlterField(
            model_name='movie',
            name='image',
            field=models.ImageField(upload_to=b'settings.MEDIA_ROOT', blank=True),
            preserve_default=True,
        ),
    ]
