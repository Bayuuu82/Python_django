from django.shortcuts import render
from . forms import Tamus
from . models import Guests

def index(request):
    buku_tamus = Tamus()
    context = {'bukutamus': buku_tamus,}
    
    if request.method == 'POST':
        Guests.objects.create(
            nim = request.POST.get('nim'),
            nama = request.POST.get('nama'),
            kegiatan = request.POST.get('kegiatan'),
        )
    
    
    return render(request, 'tamus/index.html', context)
    