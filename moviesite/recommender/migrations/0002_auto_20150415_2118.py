# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('recommender', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='recommenderchoice',
            name='value',
            field=models.CharField(max_length=5),
            preserve_default=True,
        ),
    ]
