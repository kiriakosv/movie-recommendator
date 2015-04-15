from django.db import models

class RecommenderQuestion(models.Model):
    question_text = models.CharField(max_length=200)

    def __str__(self):
        return self.question_text


class RecommenderChoice(models.Model):
    question = models.ForeignKey(RecommenderQuestion)
    choice_text = models.CharField(max_length=200)
    value = models.IntegerField(default=0)

    def __str__(self):
        return self.choice_text
