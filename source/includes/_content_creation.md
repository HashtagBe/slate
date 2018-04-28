# Content Creation




## Create Content

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
upload_ids[] | no | upload ids
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
coupon_ids[] | no | coupon ids

### Access Rights

This endpoint requires an API token in the request header.





## Read Content

### HTTP Request

`GET https://api.hashtag.be/api/v5/content`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
content_id | yes | integer content id

### Access Rights

This endpoint requires an API token in the request header.




## Update Content

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

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/content`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
content_id | yes | integer content id

### Access Rights

This endpoint requires an API token in the request header.




## Extract Content from a URL

### HTTP Request

`GET https://api.hashtag.be/api/v5/content/extract`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
url | yes | url encoded url

### Access Rights

This endpoint requires an API token in the request header.




## Bookmark a Content

### HTTP Request

`POST https://api.hashtag.be/api/v5/content/bookmarks`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
user_id | yes | integer id
content_id | yes | integer id

### Access Rights

This endpoint requires an API token in the request header.



## Read the Bookmarks for a Content or a User

### HTTP Request

`GET https://api.hashtag.be/api/v5/content/bookmarks`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
user_id | no | integer id
content_id | no | integer id
from | no | | 0
nmemberships | no | | 18

One of either user_id or content_id must be given. In the case of user_id, the bookmarked content_ids are returned, in the case of content_id, the user_ids are returned.

### Access Rights

This endpoint requires an API token in the request header.



## Un-bookmark a Content

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/content/bookmarks`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
user_id | yes | integer id
content_id | yes | integer id

### Access Rights

This endpoint requires an API token in the request header.
