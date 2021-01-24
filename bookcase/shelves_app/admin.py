from django.contrib import admin

from .models import Author, Book, Shelf


admin.site.register(Author)
admin.site.register(Book)
admin.site.register(Shelf)
