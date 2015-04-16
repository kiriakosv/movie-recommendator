# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('recommender', '0004_auto_20150416_1713'),
    ]

    operations = [
        migrations.AddField(
            model_name='recommenderchoice',
            name='name',
            field=models.CharField(default='None', max_length=5),
            preserve_default=False,
        ),
    ]
