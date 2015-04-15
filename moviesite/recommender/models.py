from django.db import models

class RecommenderQuestion(models.Model):
    question_text = models.CharField(max_length=200)
    question_name = models.CharField(max_length=15)

    def __str__(self):
        return self.question_text


class RecommenderChoice(models.Model):
    question = models.ForeignKey(RecommenderQuestion)
    choice_text = models.CharField(max_length=200)
    value = models.CharField(max_length=5)

    def __str__(self):
        return self.choice_text
