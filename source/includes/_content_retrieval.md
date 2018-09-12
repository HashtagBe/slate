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
user_id | yes 

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
user_id | yes | |
network_id | yes | |
from | no | | 0
ncontent | no | | 18
q | no | keyword query | no keyword search
content_type_ids | no | comma separated content type ids filter | no filter
content_ids | no | comma separated widget ids filter | no filter
excluded_content_ids | no | comma separated content ids to be excluded | no filter
creator_ids | no | comma separated user (creator) ids filter | no filter
only | no | to_me, saved, viewed, claimed, declined, not_to_me, not_saved, not_viewed, not_claimed, not_declined or any comma separated combination which makes logical sense |
sources | no | any comma separated combination of manual, syndicated, shared | no filter
price_max | no | integer |
states | no | any comma separated combination of suggested, approved, hidden, rejected, deleted |
targeting_types | no | |
event_start_date_later_than_now | no | |
no_expired_content | no | |
order | no | desc or asc | desc
sort_by | no | digital_me, or field name | |

### Access Rights

This endpoint requires an API token in the request header.



## Extract Core Content from URL

> Response

```json
{
  "status": "success",
  "data": 
  {
    "extracted_fields": [
      ... fields ...
    ]
  }
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/content/extract`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
url | yes | url-encoded url
user_id | yes | integer id

### Access Rights

This endpoint requires an API token in the request header.




## Content Targeted to a User

> Response

```json
{
  "status": "success",
  "data": 
  {
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

### HTTP Request

`GET https://api.hashtag.be/api/v5/content/to_me`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
network_id | no | integer id
user_id | no | integer id

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

`GET https://api.hashtag.be/api/v5/content/rewards`

`GET https://api.hashtag.be/api/v5/content/rewards/available`

`GET https://api.hashtag.be/api/v5/content/rewards/claimed`

`GET https://api.hashtag.be/api/v5/content/rewards/claimable`

### Query Parameters

Parameter | Required | Default
--------- | -------- | -----------
user_id | yes |
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
