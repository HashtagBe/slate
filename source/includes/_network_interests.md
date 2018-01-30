# Network Interests

## Create a Network Interest

> Network interest created

```json
{
  "status": "success"
}
```

> Network interest creation failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`POST https://api.hashtag.be/api/v5/networks/network_interests`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
network_id | yes | integer network interest id |
name | yes |  |
state | no | suggested, approved, hidden, rejected, deleted | suggested
language | no | ISO language code | en

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to members of the network with role manager.




## Read Network Interests

> Network interests response when network_id is set

```json
{
    "status": "success",
    "data": {
        "network_id": "1",
        "network_interests": [
            {
                "id": 1,
                "name": "interest0",
                "language": "en",
                "state": "suggested",
                "network_id": 1,
                "interest_ids": [
                    1
                ],
                "interest_type": "manually_created",
                "created_at": 1517216150286
            },
            {
                "id": 2,
                "name": "interest1",
                "language": "en",
                "state": "suggested",
                "network_id": 1,
                "interest_ids": [
                    2
                ],
                "interest_type": "manually_created",
                "created_at": 1517216150331
            },
            {
                "id": 3,
                "name": "INTEREST0",
                "language": "en",
                "state": "suggested",
                "network_id": 1,
                "interest_ids": [
                    1
                ],
                "interest_type": "manually_created",
                "created_at": 1517216150335
            }
        ]
    }
}
```

> Network interests response when network_interest_id is set

```json
{
    "status": "success",
    "data": {
        "network_interest": {
            "id": 3,
            "name": "INTEREST0",
            "language": "en",
            "state": "suggested",
            "network_id": 1,
            "interest_ids": [
                1
            ],
            "interest_type": "manually_created",
            "created_at": 1517216150335
        }
    }
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/networks/network_interests`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
network_id | no | integer network id
network_interest_id | no | integer network interest id

One of these parameters must be set.

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to the users who are members of the network.




## Update a Network Interest

> Network interest updated

```json
{
  "status": "success"
}
```

> Network interest update failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`PUT https://api.hashtag.be/api/v5/networks/network_interests`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
network_interest_id | yes | integer network interest id |
state | no | suggested, approved, hidden, rejected, deleted | suggested
language | no | ISO language code | en

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to the users who are members of the network with role manager.





## Delete a Network Interest

> Network interest deleted

```json
{
  "status": "success"
}
```

> Network interest was not deleted

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/networks/network_interests`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
network_interest_id | yes | integer network interest id |

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to the users who are members of the network with role manager.

