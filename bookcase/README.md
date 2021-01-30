## Installation

```bash
python manage.py migrate
python manage.py createsuperuser
```
Create a database called "bookcase"
```bash
psql -h hostname -d bookcase -U rolename -f bookcase.sql
```
```bash
python manage.py runserver
```