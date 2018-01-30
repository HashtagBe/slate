# Networks



## Create a Network

> If the network is created successfully

```json
{
  "status": "success"
}
```

> If the network creation fails

```json
{
  "status": "fail",
  "message": "..."
}
```

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
digest_day | no | monday, tuesday, wednesday, thursday, friday, saturday, sunday | monday
digest_hour | no | 0-23 | 0

### Access Rights

This endpoint requires an API token in the request header, and is only accessible to users who have user_role = staff.




## Read a Network's Settings

> Network settings response

```json
{
    "status": "success",
    "data": {
        "network": {
            "network_id": 1,
            "name": "test",
            "full_name": "#be test network",
            "description": "This is to put in all those tests after launch",

            "logo": "<url for logo image>",
            "banner": "<url for banner image>",
            "background": "<url for background image>",
            "rgb_hex_color": "dddddd",

            "website": "<website link>",
            "facebook": "<facebook link>",
            "linkedin": "<linked in link>",
            "twitter": "<twitter link>", 

            "access_type": "open",
            "hidden": false,  
            "can_share_widgets": true,
            "can_target_by_role": true,
            "can_target_by_user": true,
            "personalize_network_banner": true,
            "default_role": "user",
            "created_at": 1516942298423,
            
            "digest_scheduling_type": "weekly",
            "digest_day": "monday",
            "digest_hour": 4, 

            "widget_types": [],
            "syndicators": [],
            "network_interests": [],
            "memberships_count": 2,
            "content_count": 0
        }
    }
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/networks`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
network_id   | yes      | integer network id

### Access Rights

This endpoint requires an API token in the request header, and is only accessible to the users who are members of the network.




## Update a Network's Settings

> If the network settings are updated successfully

```json
{
  "status": "success"
}
```

> If the network is not deleted

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`PUT https://api.hashtag.be/api/v5/networks`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
network_id | yes | |
name | no | |
full_name | no | |
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
digest_day | no | monday, tuesday, wednesday, thursday, friday, saturday, sunday | monday
digest_hour | no | 0-23 | 0

### Access Rights

This endpoint requires an API token in the request header, and is only accessible to users who are members of the network with role manager.




## Delete a Network

> If the network is deleted successfully

```json
{
  "status": "success"
}
```

> If the network is not deleted

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/networks`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
network_id   | yes      | integer network id

### Access Rights

This endpoint requires an API token in the request header, and is only accessible to users who are members of the network with role manager.





## Network Analytics

> If the network is deleted successfully

```json
{
  "status": "success"
}
```

> If the network is not deleted

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/networks/analytics`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
network_id   | yes   | integer network id

### Access Rights

This endpoint requires an API token in the request header, and is only accessible to users who are members of the network with role manager.
