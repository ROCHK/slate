# Projects

## The Project Object

#### Attributes

Attribute | Description
--------- | -----------
id | The hashed ID of the Project
name | The name of the Project
number | something
siteAgent | something
siteAgentPhone | something

## Retrieve a Project

> Example Request

```http
GET http://localhost:8999/projects/9Z7yj5mgzEVqBygroaeJ0Nl2bOMD
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
    "client": "DTT",
    "contractor": "DTT",
    "endDate": 1515772800000,
    "id": "9Z7yj5mgzEVqBygroaeJ0Nl2bOMD",
    "manager": "Me",
    "managerPhone": "1233211234",
    "name": "TestProject",
    "number": "1",
    "siteAgent": "You",
    "siteAgentPhone": "2344324567",
    "startDate": 1515772800000
}
```

Retrieves the details of a project that has previously been created. Supply a unique Project ID and the corresponding project information will be returned.

### HTTP Request

`GET http://localhost:8999/projects/<ID>`

#### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Project

### Returns

Returns a Project object if a valid Project ID was provided, and returns an error otherwise.

## List Existing Projects

> Example Response

```json
[
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
		"client": "DTT",
		"contractor": "DTT",
		"endDate": 1515772800000,
		"id": "9Z7yj5mgzEVqBygroaeJ0Nl2bOMD",
		"manager": "Me",
		"managerPhone": "1233211234",
		"name": "TestProject",
		"number": "1",
		"siteAgent": "You",
		"siteAgentPhone": "2344324567",
		"startDate": 1515772800000
	}
]
```

### HTTP Request

`GET http://localhost:8999/projects`

## Notification
