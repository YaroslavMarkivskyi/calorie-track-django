from django.shortcuts import render
from .models import Food
# Create your views here.


def index(request):
    food = Food.objects.all()
    return render(request, 'food/index.html', {'food': food})
