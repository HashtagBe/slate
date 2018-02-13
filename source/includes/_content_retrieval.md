# Content Retrieval




## Similar Content

> Response

```json
{
  "status": "success",
  "data": 
  {
    "similar_content": [
      {
        ... content 0 fields ...
      },
      {
        ... content 1 fields ...
      },
      ...
    ]
  }
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/content/similar`

### Query Parameters

Parameter | Required 
--------- | -------- 
content_id | yes

### Access Rights

This endpoint requires an API token in the request header.





## Search Content

> Response

```json
{
  "status": "success",
  "data": 
  {
    "search_result": [
      {
        ... content 0 fields ...
      },
      {
        ... content 1 fields ...
      },
      ...
    ]
  }
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/content/search`

### Query Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
from | no | | 0
ncontent | no | | 18
q | no | keyword query | no keyword search
widget_type_ids | no | comma separated widget type ids filter | no filter
widget_ids | no | comma separated widget ids filter | no filter
creator_ids | no | comma separated user (creator) ids filter | no filter
only | no | any comma separated combination of saved, viewed, declined, claimed, message, as_network, not_saved, not_viewed, not_declined, not_claimed, non_message, not_as_network | no filter
has | no | any comma separated combination of comments, link, image, file, video | no filter
sources | no | any comma separated combination of manual, syndicated, shared | no filter


### Access Rights

This endpoint requires an API token in the request header.




## Comments

> Response successful

```json
{
  "status": "success",
  "data": 
  {
    "content_id": 3,
    "comments": [
      {
        ... comment 0 fields ...
      },
      {
        ... comment 1 fields ...
      },
      ...
    ]
  }
    ]
  }
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/content/comments`

### Query Parameters

Parameter | Required | Default
--------- | -------- | -------
content_id | yes |
from      | no | 0
ncomments | no | 18

### Access Rights

This endpoint requires an API token in the request header.





## Rewards

> Response

```json
{
  "status": "success",
  "data": 
  {
    "rewards": [
      {
        ... reward 0 fields ...
      },
      {
        ... reward 1 fields ...
      },
      ...
    ]
  }
}
```

These return the rewards by state for the current user.

### HTTP Request

`GET https://api.hashtag.be/api/v5/content/rewards/available`

`GET https://api.hashtag.be/api/v5/content/rewards/claimed`

`GET https://api.hashtag.be/api/v5/content/rewards/claimable`

`GET https://api.hashtag.be/api/v5/content/rewards/challenges`

### Query Parameters

Parameter | Required | Default
--------- | -------- | -----------
network_id | no | all networks
from | no | 0
nrewards | no | 18

### Access Rights

This endpoint requires an API token in the request header.





## Events

> Response

```json
{
  "status": "success",
  "data": 
  {
    "events": [
      {
        ... events 0 fields ...
      },
      {
        ... events 1 fields ...
      },
      ...
    ]
  }
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/content/events`

### Query Parameters

Parameter | Required | Default
--------- | -------- | -------
network_id | no | all networks
from | no | 0
nevents | no | 18
upcoming | no | true

### Access Rights

This endpoint requires an API token in the request header.





## Tips

> Response

```json
{
  "status": "success",
  "data": 
  {
    "tips": [
      {
        ... tip 0 fields ...
      },
      {
        ... tip 1 fields ...
      },
      ...
    ]
  }
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/content/tips`

### Query Parameters

Parameter | Required | Default
--------- | -------- | -------
network_id | no | all networks
from | no | 0
ntips | no | 18

### Access Rights

This endpoint requires an API token in the request header.
