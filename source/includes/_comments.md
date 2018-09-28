# Comments

## Create a Comment

### HTTP Request

`POST https://api.hashtag.be/api/v5/content/comments`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
content_id | yes | integer content id |
user_id | yes | integer user id |
comment | yes | string | 
status | no | string | online, censored, or deleted |
response_id | no | id of comment which this comment is responding to

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to users.




## Read Comments

### HTTP Request

`GET https://api.hashtag.be/api/v5/content/comments`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
content_id | no | integer content id
comment_id | no | integer comment id
from | no | | 0
ncomments | no | | 18

One of the id parameters must be set.

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to the users who are members of the network with role manager.




## Update a Comment

### HTTP Request

`PUT https://api.hashtag.be/api/v5/content/comments`

### Parameters

Parameter | Required | Description 
--------- | -------- | ----------- 
comment_id | yes | 
user_id | yes | 
comment | no |
status | no | see above for values

### Access Rights

This endpoint requires an API token in the request header.





## Delete a Comment

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/content/comments`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
comment_id | yes | 
user_id | yes |

### Access Rights

This endpoint requires an API token in the request header. 

