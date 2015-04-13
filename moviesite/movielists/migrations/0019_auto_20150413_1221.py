# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('movielists', '0018_comment'),
    ]

    operations = [
        migrations.AddField(
            model_name='comment',
            name='person',
            field=models.CharField(default='unknown', max_length=50),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='comment',
            name='comment_text',
            field=models.TextField(max_length=200),
            preserve_default=True,
        ),
    ]
