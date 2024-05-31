from django.shortcuts import render
from .models import JobHistory

def job_list(request):
    jobs = JobHistory.objects.all()
    return render(request, 'jobs/job_list.html', {'jobs': jobs})
