# Projects

## The Project Object

This is an object representing a project and it contains the following attributes:

### Attributes

Attribute | Description
--------- | -----------
id | ID of the project
number | The serial number of the project
name | Name of the project
client | Name of the client
contractor | Name of the contractor
siteAgent | Name of the site agent
siteAgentPhone | Phone number of the site agent
manager | Name of the site manager
managerPhone | Phone number of the site manager
startDate | Project's starting date
endDate | Project's target completion date
boundary | List of coordinates and shape type denoting the project's site area

## Retrieve a Project

> Example Request

```http
GET https://api.dasloop.com/projects/9Z7yj5mgzEVqBygroaeJ0Nl2bOMD
```

> Example Response

```json
{
    "boundary": {
        "coordinates": [
            [
                [
                    [
                        114.20519828796388,
                        22.431974847069927
                    ],
                    [
                        114.21472549438477,
                        22.42578648885657
                    ],
                    [
                        114.21279430389404,
                        22.4234856186585
                    ],
                    [
                        114.20296669006348,
                        22.42979308559739
                    ],
                    [
                        114.20519828796388,
                        22.431974847069927
                    ]
                ]
            ]
        ],
        "type": "MultiPolygon"
    },
    "client": "Client",
    "contractor": "Contractor",
    "endDate": 1515772800000,
    "id": "9Z7yj5mgzEVqBygroaeJ0Nl2bOMD",
    "manager": "Mr. Lee",
    "managerPhone": "23456789",
    "name": "Project 1",
    "number": "1",
    "siteAgent": "Mr. Leung",
    "siteAgentPhone": "98765432",
    "startDate": 1515772800000
}
```

Retrieves the details of a project that has previously been created. Supply a unique Project ID and the corresponding project information will be returned.

### HTTP Request

`GET https://api.dasloop.com/<ID>`

#### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Project

### Returns

Returns a Project object if a valid Project ID was provided, and returns an error otherwise.

## List All Projects

> Example Response

```json
[
	{
		...
		"name": "Project 1",
		"number": "1",
		...
	},
	{
		...
		"name": "Project 2",
		"number": "2",
		...
	},
	{
		...
		"name": "Project 3",
		"number": "3",
		...
	}
]
```

### HTTP Request

`GET https://api.dasloop.com/projects`

### Returns

Returns a list of projects associated to the authenticated user.

## Notification
