from django.db import models
from django.core.exceptions import ValidationError


class ModelWithName(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name


class Author(ModelWithName):
    pass


class Shelf(ModelWithName):
    pass


class Book(ModelWithName):
    book_author = models.ForeignKey(Author, on_delete=models.CASCADE)
    book_shelf = models.ForeignKey(Shelf, on_delete=models.DO_NOTHING)
    position = models.IntegerField()

    def clean(self):
        positions = Book.objects.filter(
            book_shelf__id=self.book_shelf_id).values('position', 'id')
        for pos in positions:
            if pos['position'] == self.position and pos['id'] != self.id:
                raise ValidationError('Position taken')
