from django.shortcuts import render

from .models import Author, Book, Shelf

AUTHOR_LIST_TITLE = 'List Of Authors'
AUTHOR_DETAILS_TITLE = 'list Of Books By {}:'
SHELVES_LIST_TITLE = 'List Of Shelves'
SHELVES_DETAILS_TITLE = 'Books on the {} shelf:'


def index(request):
    context = {
        'authors_title': AUTHOR_LIST_TITLE,
        'shelves_title': SHELVES_LIST_TITLE
    }
    return render(request, 'index.html', context)


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
    if type(shelf_id) != int:
        shelf_id = shelf_id[:-1]
    books = Book.objects.filter(book_shelf__id=shelf_id).order_by('position')
    context = get_context(Shelf, shelf_id, books, SHELVES_DETAILS_TITLE)
    return render(request, 'shelves_details.html', context)


def move_book(request, book_id, direction):
    book = Book.objects.filter(id=book_id).first()
    target_position = book.position - 1 if direction == 'up' \
        else book.position + 1

    book_target = Book.objects.filter(
        position=target_position, book_shelf__id=book.book_shelf_id).first()
    if book_target:
        book.position, book_target.position = book_target.position, book.position
        book.save(), book_target.save()
    return shelves_details(request, book.book_shelf_id)
