from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'authors_list', views.authors_list, name='authors_list'),
    url(r'^authors/(.+)$', views.author_details, name='author_details'),
    url(r'shelves_list', views.shelves_list, name='shelves_list'),
    url(r'^shelves/(.+)$', views.shelves_details, name='author_details'),
]
