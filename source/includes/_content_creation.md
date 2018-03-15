# Content Creation




## Create Content

> Content created or updated

```json
{
  "status": "success",
  "data": {
    "content": { 
      ... content fields ...
    }
  }
}
```

> Content creation or update failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`POST https://api.hashtag.be/api/v5/content`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
content_type_id | yes | |
creator_id | yes | |
title | yes | |
| | |
timeliness | no | day, week, month, evergreen | evergreen 
content_type_name | no | | content type name
source | no | | targeted by interest

| | |
body | no | |
url | no | |
creators_comment | no | |
| | | 
For Events| | |
event_start | no | 13 digit unix ms timestamp |
event_end | no | 13 digit unix ms timestamp |
organizer | no | |
venue | no | | 
| | |
For Rewards| | |
price | (yes) | required for rewards |
reward_url | no | |
claim_text | no | | 
coupon_ids | no | comma separated coupon ids

### Access Rights

This endpoint requires an API token in the request header.





## Read Content

> Content response

```json
{
    "status": "success",
    "data": {
        "content": {
           ... content fields ... 
        }
    }
}
```

> Content request failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/content`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
content_id | yes | integer content id

### Access Rights

This endpoint requires an API token in the request header.




## Update Content

> Content updated

```json
{
  "status": "success"
}
```

> Content update failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`PUT https://api.hashtag.be/api/v5/content`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
content_id | yes | |
title | no | |
timeliness | no | daily, weekly, monthly, evergreen | evergreen 
language | no | | en
widget_name | no | | widget type name
target_type | no | | targeted by interest
targeted_roles | no | reader, user, trusted_contributor, network_manager | all roles
targeted_user_ids | no | comma separated user ids | all users
body | no | |
url | no | |
event_start | no | 13 digit unix ms timestamp |
event_end | no | 13 digit unix ms timestamp |
organizer | no | |
venue | no | | 
price | no | required for rewards |
reward_url | no | |
claim_text | no | | 
coupon_ids | no | comma separated coupon ids

### Access Rights

This endpoint requires an API token in the request header.





## Delete Content

> Content deleted

```json
{
  "status": "success"
}
```

> Content was not deleted

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/content`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
content_id | yes | integer content id

### Access Rights

This endpoint requires an API token in the request header.




## Extract Content from a URL

> Content extracted

```json
{
  "status": "success"
  "data": {
    "extracted_fields": {
      ... content fields ...
    }
  }
}
```

### HTTP Request

`POST https://api.hashtag.be/api/v5/content/extract`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
url | yes | url encoded url

### Access Rights

This endpoint requires an API token in the request header.
