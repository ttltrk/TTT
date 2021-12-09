
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [WEB](https://github.com/ttltrk/TTT/blob/master/PY/WEB/WEB.md) - [DJANGO](https://github.com/ttltrk/TTT/blob/master/PY/WEB/DJANGO/DJANGO.md)

---

### DJANGO_FIRST_APP

---

* [STARTAPP](#STARTAPP)

---

#### STARTAPP

How to create an app

```
(MyDjangoEnv) C:\Users\blabla\Desktop\My_Django_stuff\first_project>python manage.py startapp first_app

(MyDjangoEnv) C:\Users\blabla\Desktop\My_Django_stuff\first_project>
```

[^^^](DJANGO_FIRST_APP)

---

#### CUSTOMIZATION

Update the settings.py in first_project with first_app

```
INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'first_app'
]
```

launch the server

```
(MyDjangoEnv) C:\Users\blabla\Desktop\My_Django_stuff\first_project>python manage.py runserver
Watching for file changes with StatReloader
Performing system checks...

System check identified no issues (0 silenced).

You have 18 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): admin, auth, contenttypes, sessions.
Run 'python manage.py migrate' to apply them.
December 09, 2021 - 13:02:05
Django version 3.2, using settings 'first_project.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CTRL-BREAK.
```

update the views.py in first_app like this

```
from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.

def index(request):
    return HttpResponse("Hello World")
```

update urls.py in first_project like this

```
from django.contrib import admin
from django.urls import path
from first_app import views

urlpatterns = [
    path(r'^$',views.index,name='index'),
    path('admin/', admin.site.urls),
]
```

launch the server again

```

```
