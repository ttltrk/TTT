
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [WEB](https://github.com/ttltrk/TTT/blob/master/PY/WEB/WEB.md) - [DJANGO](https://github.com/ttltrk/TTT/blob/master/PY/WEB/DJANGO/DJANGO.md)

---

### DJANGO_URL_MAPPING

---

1. Update the first_project >> urls.py

```
from django.contrib import admin
from django.urls import path
from django.urls import re_path, include
from first_app import views

urlpatterns = [
    re_path('$',views.index,name='index'),
    re_path(r'^first_app/',include('first_app.urls')),
    path('admin/', admin.site.urls),
]
```

2. create in first_app >> urls.py

```
from django.conf.urls import url
from first_app import views
from django.urls import re_path

urlpatterns = [
    re_path('$',views.index,name='index'),
]
```

3. activate Django and start the server

```
(base) C:\Users\blabla\Desktop\My_Django_stuff\first_project>activate MyDjangoEnv

(MyDjangoEnv) C:\Users\blabla\Desktop\My_Django_stuff\first_project>python manage.py runserver
```

[^^^](#URL_MAPPING)

---
