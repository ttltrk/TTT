
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [WEB](https://github.com/ttltrk/TTT/blob/master/PY/WEB/WEB.md) - [DJANGO](https://github.com/ttltrk/TTT/blob/master/PY/WEB/DJANGO/DJANGO.md)

---

### DJANGO_PROJECT

* [COMMANDLINE_SETUP](#COMMANDLINE_SETUP)
* [RUNSERVER](#RUNSERVER)

---

#### COMMANDLINE_SETUP

1. Prepare the importand dirs

```
(base) C:\Users\blabla\Desktop>mkdir My_Django_stuff

(base) C:\Users\blabla\Desktop>
```

2. Activate django

```
(base) C:\Users\blabla\Desktop\My_Django_stuff>activate MyDjangoEnv

(MyDjangoEnv) C:\Users\blabla\Desktop\My_Django_stuff>
```

3. create your first project

```
(MyDjangoEnv) C:\Users\blabla\Desktop\My_Django_stuff>django-admin startproject first_project

(MyDjangoEnv) C:\Users\blabla\Desktop\My_Django_stuff>
```

[^^^](#DJANGO_PROJECT)

---

#### RUNSERVER

Start the server

```
(MyDjangoEnv) C:\Users\blabla\Desktop\My_Django_stuff>cd first_project

(MyDjangoEnv) C:\Users\blabla\Desktop\My_Django_stuff\first_project>python manage.py runserver
Watching for file changes with StatReloader
Performing system checks...

System check identified no issues (0 silenced).

You have 18 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): admin, auth, contenttypes, sessions.
Run 'python manage.py migrate' to apply them.
December 09, 2021 - 12:47:10
Django version 3.2, using settings 'first_project.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CTRL-BREAK.
```

[^^^](#DJANGO_PROJECT)

---
