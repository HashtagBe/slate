# Network Hot Links

## Create a Network Hot Link

### HTTP Request

`POST https://api.hashtag.be/api/v5/networks/hot_links`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
title | yes | string |
network_id | yes | integer id | 
upload_id | no | integer id |
link | no | string |


### Access Rights

This endpoint requires an API token in the request header, and is only accessible to users who have user_role staff.




## Read a Network's Hot Links

### HTTP Request

`GET https://api.hashtag.be/api/v5/networks/hot_links`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
network_id   | no  | integer network id
hot_link_id | no | integer id

One or other of the parameters must be provided.

### Access Rights

This endpoint requires an API token in the request header, and is only accessible to the users who are members of the network.




## Update a Network Hot Link's Settings

### HTTP Request

`PUT https://api.hashtag.be/api/v5/networks/hot_links`

### Parameters

See POST parameter list

### Access Rights

This endpoint requires an API token in the request header, and is only accessible to users who are members of the network with role manager.




## Delete a Network Hot Link

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/networks/hot_links`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
hot_link_id   | yes      | integer  id

### Access Rights

This endpoint requires an API token in the request header, and is only accessible to users who are members of the network with role manager.


