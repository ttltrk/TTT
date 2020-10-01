
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [WEB](https://github.com/ttltrk/TTT/blob/master/PY/WEB/WEB.md) - [REST_API](https://github.com/ttltrk/TTT/blob/master/PY/WEB/REST_API/REST_API.md)

---

### BASIC_API_REQ

---

```

```

---

* [BASICS](#BASICS)
* []()
* []()
* []()
* []()

---

#### BASICS

```py
from flask import Flask
from flask_restful import Resource, Api

app = Flask(__name__)
api = Api(app)

class HelloWorld(Resource):

    def get(self):
        return {'hello':'world'}   

api.add_resource(HelloWorld,'/')

if __name__ == '__main__':
    app.run()

>>>
in postman GET >> http://127.0.0.1:5000/
and you will see the results
>>>
```

[^^^](#BASIC_API_REQ)

---
