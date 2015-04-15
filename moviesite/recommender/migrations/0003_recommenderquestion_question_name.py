# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('recommender', '0002_auto_20150415_2118'),
    ]

    operations = [
        migrations.AddField(
            model_name='recommenderquestion',
            name='question_name',
            field=models.CharField(default='None', max_length=15),
            preserve_default=False,
        ),
    ]
