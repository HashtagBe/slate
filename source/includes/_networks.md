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
hot_links_ids | no | |
hot_links_icon | no | |
rgb_hex_color | no | rgb hexadecimal colour | 000000
access_type | no | open or closed | open
hidden | no | true or false | false | false
can_share_widgets | no | true or false | false
can_target_by_role | no | true or false | true
can_target_by_user | no | true or false | true
personalize_network_banner | no | true or false | false
credits_enabled | no | true or false | true
send_emails | no | true or false | false
hide_facebook_login | no | true or false | false
show_starred_content_section | no | true or false | true
enable_hot_links_widget | no | true or false | false
hot_button_primary | no | string | ""
hot_button_secondary | no | string | ""
modal_link_as_priority | no | true or false | true
includes_running | no | true or false | false
includes_cycling | no | true or false | false
default_membership_role | no | reader, user, contributor, network_manager | user
digest_scheduling_type | no | daily, weekly, monthly | weekly
digest_day | no | 0-6, sunday to saturday | 1
digest_hour | no | 0-23 | 0


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

See GET parameter list

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


