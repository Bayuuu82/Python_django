from django.contrib import admin

from . models import Guests

class tampilguests(admin.ModelAdmin):
    list_display = ('nim', 'nama', 'kegiatan')
    list_display_links = (None)
    search_fields = ('nim','nama')

admin.site.register(Guests, tampilguests)