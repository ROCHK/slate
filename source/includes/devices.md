# Devices

## The Device Object

This is an object representing a device and it has the following attributes:

### Attributes

Attribute | Description
--------- | -----------
id | ID of the device
type | The type of the device, such as dasloop, gas detector, camera, etc
alerts | List of alerts associated with the device
worker | The worker assigned to the device. Refer to <a href="#workers">Workers</a> for more information

## Retrieve Device Information

> Example Request

```http
`GET https://api.dasloop.com/projects/9Z7yj5mgzEVqBygroaeJ0Nl2bOMD/devices/2`
```

> Example Response

```json
{
    "id": "2",
    "type": "gasdetector",
    "alerts": [],
    "worker": {
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
        "remarks": "1",
        "trade": "Plumber"
    }
}
```

Retrieves the details of a device that has previously been created and assigned to the project being specified. Supply both Project ID and Device ID and the corresponding device information will be returned.

### HTTP Request

`GET https://api.dasloop.com/projects/<ProjectID>/devices/<DeviceID>`

#### URL Parameters

Parameter | Description
--------- | -----------
ProjectID | The ID of the project
DeviceID | The ID of the device

### Returns

Returns a device object if both ProjectID and DeviceID were valid, and returns an error otherwise.

## List All Devices

> Example Request

```http
`GET http://localhost:8999/projects/9Z7yj5mgzEVqBygroaeJ0Nl2bOMD/devices`
```

> Example Response

```json
[
    {
        "id": "1",
        "type": "dasloop",
        "alerts": []
    },
    {
        "id": "2",
        "type": "gasdetector",
        "alerts": [],
        "worker": {
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
            "remarks": "1",
            "trade": "Plumber"
        }
    }
]
```

List out all devices associated with a project.

### HTTP Request

`GET https://api.dasloop.com/projects/<ProjectID>/devices`

#### URL Parameters

Parameter | Description
--------- | -----------
ProjectID | The ID of the project

### Returns

Returns a list of devices assigned to the project.
