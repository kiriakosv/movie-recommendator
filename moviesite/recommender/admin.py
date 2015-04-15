from django.contrib import admin

from .models import RecommenderQuestion, RecommenderChoice

class ChoiceInline(admin.TabularInline):
    model = RecommenderChoice
    extra = 2

class RecommenderQuestionAdmin(admin.ModelAdmin):
    fieldsets = [
        (None,               {'fields': ['question_text', 'question_name']}),
    ]
    inlines = [ChoiceInline]
    list_display = ('question_text',)
    search_fields = ['question_text']
    
admin.site.register(RecommenderQuestion, RecommenderQuestionAdmin)
