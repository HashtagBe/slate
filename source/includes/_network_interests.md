# Network Interests




## Create a Network Interest

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
                ... network interest 1 fields ...
            },
            {
                ... network interest 2 fields ...
            },
            ...
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
            ... network interest fields ...
        }
    }
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/networks/network_interests`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
network_id | no | integer network id |
network_interest_id | no | integer network interest id |
from | no | | 0
nnetwork_interests | no | | 18

One of these parameters must be set.

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to the users who are members of the network.




## Update a Network Interest

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

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/networks/network_interests`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
network_interest_id | yes | integer network interest id |

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to the users who are members of the network with role manager.

