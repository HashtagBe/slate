# Uploads



## Create an Upload

### HTTP Request

`POST https://api.hashtag.be/api/v5/uploads`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
upload_type_name | yes | one of |
data | no | base 64 encoded data | 

link_url | no | |
title | no | |
body | no | |
image_url | no | |
position | no | |
is_cover_image | |

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

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
upload_id | yes | |
link_url | no | |
title | no | |
body | no | |
image_url | no | |
position | no | |
is_cover_image | |

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
