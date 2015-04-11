# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('movielists', '0003_auto_20150411_1708'),
    ]

    operations = [
        migrations.AddField(
            model_name='movie',
            name='cluster',
            field=models.CharField(default=b'A', max_length=1, choices=[(b'A', b'Cluster A'), (b'B', b'Cluster B'), (b'C', b'Cluster C'), (b'D', b'Cluster D'), (b'E', b'Cluster E')]),
            preserve_default=True,
        ),
    ]
