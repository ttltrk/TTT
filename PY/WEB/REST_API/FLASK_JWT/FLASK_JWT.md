
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [WEB](https://github.com/ttltrk/TTT/blob/master/PY/WEB/WEB.md) - [REST_API](https://github.com/ttltrk/TTT/blob/master/PY/WEB/REST_API/REST_API.md)

---

### FLASK_JWT

---

```

```

---

* [USER](#USER)
* [SECURE_CHECK](#SECURE_CHECK)
* [FLASK_JWT_POSTMAN](#FLASK_JWT_POSTMAN)


---

#### USER

```py
#user.py

class User():

    def __init__(self,id,username,password):

        self.id = id
        self.username = username
        self.password = password

    def __str__(self):
        return f"User Id: {self.id}"
```

[^^^](#FLASK_JWT)

---

#### SECURE_CHECK

```py
#secure_check.py

from user import User

users = [ User(1,'trk','mypassword'),
          User(2, 'mimi','secret')

]

username_table = {u.username: u for u in users}
userid_table = {u.id: u for u in users}

def authenticate(username, password):
    user = username_table.get(username,None)
    if user and password == user.password:
        return user

def identity(payload):
    user_id = payload['identity']
    return userid_table.get(user_id, None)
```

[^^^](#FLASK_JWT)

---

#### FLASK_JWT_POSTMAN

```py
from flask import Flask
from flask_restful import Resource, Api
from secure_check import authenticate,identity
from flask_jwt import JWT, jwt_required
from user import User

app = Flask(__name__)
app.config['SECRET_KEY'] = 'mysecretkey'

api = Api(app)
jwt = JWT(app,authenticate,identity)

puppies = []

class PuppyNames(Resource):

    def get(self,name):

        for pup in puppies:
            if pup['name'] == name:
                return pup

        return {'name':None}, 404

    def post(self,name):

        pup = {'name':name}
        puppies.append(pup)
        return pup

    def delete(self,name):

        for ind,pup in enumerate(puppies):
            if pup['name'] == name:
                deleted_pup = puppies.pop(ind)
                return {'note':'delete success'}

class AllNames(Resource):

    @jwt_required()
    def get(self):
        return {'puppies':puppies}

api.add_resource(PuppyNames,'/puppy/<string:name>')
api.add_resource(AllNames,'/puppies')

if __name__ == '__main__':
    app.run()
```

[^^^](#FLASK_JWT)

---
