from django.shortcuts import render

from .models import Author, Book, Shelf

AUTHOR_LIST_TITLE = 'List Of Authors'
AUTHOR_DETAILS_TITLE = 'list Of Books By {}:'
SHELVES_LIST_TITLE = 'List Of Shelves'
SHELVES_DETAILS_TITLE = 'Books on the {} shelf:'


def base_list(request, obj, title, partial_url):
    objs = obj.objects.filter()
    context = {
        'title': title,
        'list': objs,
        'partial_url': partial_url
    }
    return render(request, 'base_list.html', context)


def authors_list(request):
    return base_list(request, Author, AUTHOR_LIST_TITLE, 'authors')


def shelves_list(request):
    return base_list(request, Shelf, SHELVES_LIST_TITLE, 'shelves')


def get_context(obj, item_id, books, title):
    name = obj.objects.filter(id=item_id).values('name')
    return {
        'title': title.format(name.first()['name']),
        'books_list': books
    }


def author_details(request, author_id):
    author_id = author_id[:-1]
    books = Book.objects.filter(book_author__id=author_id).order_by('position')
    context = get_context(Author, author_id, books, AUTHOR_DETAILS_TITLE)
    return render(request, 'base_details.html', context)


def shelves_details(request, shelf_id):
    shelf_id = shelf_id[:-1]
    books = Book.objects.filter(book_shelf__id=shelf_id).order_by('position')
    context = get_context(Shelf, shelf_id, books, SHELVES_DETAILS_TITLE)
    return render(request, 'base_details.html', context)
