# Magazine 3.0

## Retrieving a Magazine Edition

> Magazine successfully retrieved

```json
{
  "status": "success",
  "data": {
     "created_at": 2,
     "edition": "3.10",
     "sections": [
       {
          "type": "",
          "title": "",
          "subtitle": "",
          "interest_ids": [],
          "content_ids": []
       },
       {
         ... section 1 fields ...
       },
       {
       	 ... section 2 fields ...
       }                
    ],
    "content": [
      {
      	... content fields ...
      },
      {
      	... content fields ...
      },
      ...
    ]
  }
}
```

> Request for magazine failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/magazine`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
user_id | yes | |
network_id | yes | |
edition | no | string | most recent
from | no | starting section number | 0
nsections | no | | 6

### Access Rights

This endpoint requires an API token in the request header.
