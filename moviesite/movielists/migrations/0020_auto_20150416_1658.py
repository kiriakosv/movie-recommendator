# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('movielists', '0019_auto_20150413_1221'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='movie',
            name='cluster',
        ),
        migrations.AddField(
            model_name='movie',
            name='killing',
            field=models.CharField(default=b'N', max_length=1, choices=[(b'Y', b'Yes'), (b'N', b'No')]),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='movie',
            name='violence',
            field=models.CharField(default=b'N', max_length=1, choices=[(b'Y', b'Yes'), (b'N', b'No')]),
            preserve_default=True,
        ),
    ]
