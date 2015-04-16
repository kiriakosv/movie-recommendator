# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('recommender', '0003_recommenderquestion_question_name'),
    ]

    operations = [
        migrations.AlterField(
            model_name='recommenderchoice',
            name='value',
            field=models.CharField(max_length=3),
            preserve_default=True,
        ),
    ]
