from django.shortcuts import render

from django.shortcuts import render
from .models import MyModel

def my_model_list(request):
    # Créer un objet de test
    MyModel.objects.create(name="Objet de test")
    
    # Récupérer tous les objets MyModel
    objects = MyModel.objects.all()
    
    # Renvoyer le rendu HTML avec les objets
    return render(request, 'myapp/my_model_list.html', {'objects': objects})


# Create your views here.
