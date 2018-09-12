# Uploads

    
## Create an Upload

### HTTP Request

`POST https://api.hashtag.be/api/v5/uploads`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
upload_type_name | yes | one of network_banner, network_logo, user_image, image, link, video, file |
data | no | base 64 encoded data | 
content_id | no | integer id |
link_url | no | |
title | no | |
body | no | |
image_url | no | |
position | no | |
is_cover_image | no | true or false | true

### Access Rights

This endpoint requires an API token in the request header.




## Read an Upload

### HTTP Request

`GET https://api.hashtag.be/api/v5/uploads`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
upload_id | yes | integer identifier

### Access Rights

This endpoint requires an API token in the request header.





## Update Content

### HTTP Request

`PUT https://api.hashtag.be/api/v5/uploads`

### Parameters

See POST parameters.

### Access Rights

This endpoint requires an API token in the request header.




## Delete an Upload

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/uploads`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
upload_id | yes | integer content id

### Access Rights

This endpoint requires an API token in the request header.
