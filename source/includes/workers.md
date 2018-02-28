# Workers

## The Worker Object

> Example Object

```json
{
    "age": 25,
    "company": "Dasloop",
    "contactPerson": {
        "name": "Wong Chun Ming",
        "phone": "98765431"
    },
    "division": "Plumbing",
    "email": "leehoming@dasloop.com",
    "gender": "male",
    "id": "9Z7yj5mgzEVqBygroaeJ0Nl2bOMD",
    "name": "Lee Ho Ming",
    "phone": "23456789",
    "registrationNumber": "A1234567",
    "remarks": "Nil",
    "trade": "Plumber"
}
```
This is an object representing a worker and it has the following attributes:

### Attributes

Attribute | Description
--------- | -----------
registrationNumber | The worker's registration number
name | Name of the worker
age | Age of the worker
gender | Gender of the worker
id | ID of the assigned project, if assigned to one
company | Company the worker is working for
division | Division of the worker
trade | Trade of the worker
phone | Phone number of the worker
email | Email of the worker
contactPerson | Name and phone number of the worker's contact person
remarks | Remarks left for the worker

## List All Workers Associated with a Project

> Example Request

```http
GET https://api.dasloop.com/projects/9Z7yj5mgzEVqBygroaeJ0Nl2bOMD/workers
```

> Example Response

```json
[
    {
        ...
        "id": "9Z7yj5mgzEVqBygroaeJ0Nl2bOMD",
        "registrationNumber": "A1234567",
        "name": "Lee Ho Ming",
        ...
    },
    {
        ...
        "id": "9Z7yj5mgzEVqBygroaeJ0Nl2bOMD",
        "registrationNumber": "B23456789",
        "name": "Wong Chun Ming",
        ...
    },
    {
        ...
        "id": "9Z7yj5mgzEVqBygroaeJ0Nl2bOMD",
        "registrationNumber": "C34567890",
        "name": "Chan Tai Man",
        ...
    }
]
```

List out all workers associated with a project.

### HTTP Request

`GET https://api.dasloop.com/projects/<ProjectID>/workers`

### URL Parameters

Parameter | Description
--------- | -----------
ProjectID | The ID of the project

### Returns

Returns a list of workers assigned to the project.