# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('recommender', '0005_recommenderchoice_name'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='recommenderchoice',
            name='name',
        ),
    ]
