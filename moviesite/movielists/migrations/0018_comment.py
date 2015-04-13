# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('movielists', '0017_auto_20150412_1342'),
    ]

    operations = [
        migrations.CreateModel(
            name='Comment',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('comment_text', models.CharField(max_length=200)),
                ('comment_pub_date', models.DateTimeField(verbose_name=b'date published')),
                ('movie', models.ForeignKey(to='movielists.Movie')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
