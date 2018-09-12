# Magazine 3.0

## Retrieving a Magazine Edition

> Magazine successfully retrieved

```json
{
    "status": "success",
    "data": {
        "sections": [
            {
                "title": "...",
                "subtitle": "...",
                "has_feature": true,
                "network_interests": [ 
                    {
                        ... network interest fields ...
                    },
                    ... 
                ].
                "content": [
                    {
                        ... content fields ...
               
                    },
                    ... further content ...
                ],
    
            },
            {
                ... next section ...
            }
         ]
     }       
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/magazine`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
user_id | yes | |
network_id | yes | |

### Access Rights

This endpoint requires an API token in the request header.



## Retrieving a Magazine Section of Starred Content

This section appears at the top of the magazine, containing only selected (starred) content.

### HTTP Request

`GET https://api.hashtag.be/api/v5/magazine/starred_section`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
user_id | yes | |
network_id | yes | |

### Access Rights

This endpoint requires an API token in the request header.




