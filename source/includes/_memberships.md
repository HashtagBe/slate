# Memberships

## Create a Membership

### HTTP Request

`POST https://api.hashtag.be/api/v5/networks/memberships`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
network_id | yes | integer network id |
user_id | yes | integer user id |
role | no | reader, user, trusted_contributor, or network_manager | user
professional_level | no | unknown, starter, professional, master | unknown
want_digest | no | true or false | true

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to users.




## Read Memberships

> Network memberships response when network_id is set

```json
{
    "status": "success",
    "data": {
        "memberships": [
            {
                ... membership 1 fields ...
            },
            {
                ... membership 2 fields ...
            },
            ...
        ]
    }
}
```

> Network memberships response when membership_id is set

```json
{
    "status": "success",
    "data": {
        "membership": {
            ... membership fields ...
        }
    }
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/networks/memberships`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
network_id | no | integer network id
membership_id | no | integer membership id
from | no | | 0
nmemberships | no | | 18

One of these parameters must be set.

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to the users who are members of the network with role manager.




## Update a Membership

### HTTP Request

`PUT https://api.hashtag.be/api/v5/networks/memberships`

### Parameters

Parameter | Required | Description 
--------- | -------- | ----------- 
role | no | reader, user, trusted_contributor, or network_manager
professional_level | no | unknown, starter, professional, master
want_digest | no | true or false

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to the users who are members of the network with role manager, and to the member user themselves. Only network managers can change the fields role or professional level, only the user themselves can change want_digest.





## Delete a Membership

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/networks/memberships`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
membership_id | yes | integer membership id

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to the users who are members of the network with role manager, and to the member user themselves.





## [Not completed] Invite a User by Email to Join a Network

> Membership invitation created

```json
{
  "status": "success"
}
```

### HTTP Request

`POST https://api.hashtag.be/api/v5/networks/memberships/invite`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
network_id | yes | integer network id |
user_id | yes | integer user id |
role | no | reader, user, trusted_contributor, or network_manager | user
professional_level | no | unknown, starter, professional, master | unknown
want_digest | no | true or false | true

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to users.

