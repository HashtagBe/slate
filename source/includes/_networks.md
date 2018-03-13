# Networks



## Create a Network

### HTTP Request

`POST https://api.hashtag.be/api/v5/networks`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
name | yes | |
full_name | yes | |
description | no | | 
logo_id | no | |
banner_id | no | |
background_id | no | |
rgb_hex_color | no | rgb hexadecimal colour | 000000
website | no | |
facebook | no | |
linkedin | no | |
twitter | no | |
access_type | no | open or closed | open
hidden | no | true or false | false
can_share_widgets | no | true or false | false
can_target_by_role | no | true or false | true
can_target_by_user | no | true or false | true
personalize_network_banner | no | true or false | false
default_role | no | reader, user, contributor, network_manager | user
digest_scheduling_type | no | daily, weekly, monthly | weekly
digest_day | no | 0-6, sunday to saturday | 1
digest_hour | no | 0-23 | 0

<aside class="warning">
Need to add in magazine settings and widget types to example
</aside>

### Access Rights

This endpoint requires an API token in the request header, and is only accessible to users who have user_role staff.




## Read a Network's Settings

### HTTP Request

`GET https://api.hashtag.be/api/v5/networks`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
network_id   | no  | integer network id
network_name | no | name of network

### Access Rights

This endpoint requires an API token in the request header, and is only accessible to the users who are members of the network.




## Update a Network's Settings

### HTTP Request

`PUT https://api.hashtag.be/api/v5/networks`

### Parameters

Parameter | Required | Description 
--------- | -------- | ----------- 
network_id | yes | 
name | no | 
full_name | no | 
description | no |  
logo_id | no | 
banner_id | no | 
background_id | no | 
rgb_hex_color | no | rgb hexadecimal colour 
website | no | 
facebook | no | 
linkedin | no | 
twitter | no | 
access_type | no | open or closed 
hidden | no | true or false 
can_share_widgets | no | true or false 
can_target_by_role | no | true or false 
can_target_by_user | no | true or false 
personalize_network_banner | no | true or false 
default_role | no | reader, user, contributor, network_manager 
digest_scheduling_type | no | daily, weekly, monthly 
digest_day | no | monday, tuesday, wednesday, thursday, friday, saturday, sunday 
digest_hour | no | 0-23 

### Access Rights

This endpoint requires an API token in the request header, and is only accessible to users who are members of the network with role manager.




## Delete a Network

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/networks`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
network_id   | yes      | integer network id

### Access Rights

This endpoint requires an API token in the request header, and is only accessible to users who are members of the network with role manager.





## [Not completed] Network Analytics

### HTTP Request

`GET https://api.hashtag.be/api/v5/networks/analytics`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
network_id   | yes   | integer network id

### Access Rights

This endpoint requires an API token in the request header, and is only accessible to users who are members of the network with role manager.
