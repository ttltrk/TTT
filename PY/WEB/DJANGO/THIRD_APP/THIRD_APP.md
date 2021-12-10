
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [WEB](https://github.com/ttltrk/TTT/blob/master/PY/WEB/WEB.md) - [DJANGO](https://github.com/ttltrk/TTT/blob/master/PY/WEB/DJANGO/DJANGO.md)

---

### DJANGO_SEC_APP

---

1. Create a new Django project >> third_project
2. Create a new Django App >> third_app

```
(base) C:\Users\blabla>cd Desktop

(base) C:\Users\blabla\Desktop>cd My_Django_stuff

(base) C:\Users\blabla\Desktop\My_Django_stuff>activate MyDjangoEnv

(MyDjangoEnv) C:\Users\blabla\Desktop\My_Django_stuff>django-admin startproject third_project

(MyDjangoEnv) C:\Users\blabla\Desktop\My_Django_stuff>ls -l
total 0
drwxrwxrwx   1 GMX\ZZ01SD693   GMX\ZZ01SD693         0 Dec  9 12:56 first_project
drwxrwxrwx   1 GMX\ZZ01SD693   GMX\ZZ01SD693         0 Dec 10 13:26 third_project

(MyDjangoEnv) C:\Users\blabla\Desktop\My_Django_stuff>cd third_project
(MyDjangoEnv) C:\Users\blabla\Desktop\My_Django_stuff\third_project>python manage.py startapp third_app

(MyDjangoEnv) C:\Users\blabla\Desktop\My_Django_stuff\third_project>
```

3. Update the settings.py in third_project with third_app

```
INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'third_app'
]
```

4. launch the app

```
(MyDjangoEnv) C:\Users\blabla\Desktop\My_Django_stuff\third_project>python manage.py runserver
Watching for file changes with StatReloader
Performing system checks...

System check identified no issues (0 silenced).

You have 18 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): admin, auth, contenttypes, sessions.
Run 'python manage.py migrate' to apply them.
December 10, 2021 - 13:28:44
Django version 3.2, using settings 'third_project.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CTRL-BREAK.
```

5. Create an Index view that returns: ```<em>My Third App</em>``` (update the views.py in third_app like this)

```
from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.

def index(request):
    return HttpResponse("<em>My Third App</em>")
# Create your views here.
```

6. Link this view to the urls.py file (update urls.py in third_project like this)

```
from django.contrib import admin
from django.urls import path
from django.urls import re_path
from third_app import views

urlpatterns = [
    re_path('$',views.index,name='index'),
    path('admin/', admin.site.urls),
]
```

[^^^](#DJANGO_SEC_APP)

---
