
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [WEB](https://github.com/ttltrk/TTT/blob/master/PY/WEB/WEB.md) - [REST_API](https://github.com/ttltrk/TTT/blob/master/PY/WEB/REST_API/REST_API.md)

---

### CRUDE_REST

---

```

```

---

* [](#)
* [](#)
* [](#)

---

####

```

```

```py
from flask import Flask
from flask_restful import Resource, Api

app = Flask(__name__)
api = Api(app)

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

    def get(self):
        return {'puppies':puppies}

api.add_resource(PuppyNames,'/puppy/<string:name>')
api.add_resource(AllNames,'/puppies')

if __name__ == '__main__':
    app.run()

>>>
run the app above
in the postman use
POST >> http://127.0.0.1:5000/puppy/Sam
POST >> http://127.0.0.1:5000/puppy/Frankie
POST >> http://127.0.0.1:5000/puppy/Davie
and after that use can use
GET >> http://127.0.0.1:5000/puppies
and you will get the list with the added puppies
you can also use
DELETE >> http://127.0.0.1:5000/puppy/Davie
and the above mentioned name will be deleted from the list
>>>
```

[^^^](#CRUDE_REST)
