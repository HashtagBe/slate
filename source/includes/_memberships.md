# Memberships

## Create a Membership

> Membership created

```json
{
  "status": "success"
}
```

> Membership creation failed

```json
{
  "status": "fail",
  "message": "..."
}
```

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




## Invite a User by Email to Join a Network

> Membership created

```json
{
  "status": "success"
}
```

> Membership creation failed

```json
{
  "status": "fail",
  "message": "..."
}
```

<aside class="warning">
Not finished, don't test yet.
</aside>

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




## Read Memberships

> Network memberships response when network_id is set

```json
{
    "status": "success",
    "data": {
        "network_id": "1",
        "memberships": [
            {
                "membership_id": 2,
                "network_id": 1,
                "user_id": 2,
                "role": "reader",
                "professional_level": "unknown",
                "want_digest": true,
                "created_at": 1516854053694,
                "ncontent_created": 0,
                "ncontent_shared": 0
            },
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
            "membership_id": 3,
            "network_id": 1,
            "user_id": 1,
            "role": "network_manager",
            "professional_level": "starter",
            "want_digest": true,
            "created_at": 1516855944184,
            "ncontent_created": 0,
            "ncontent_shared": 0
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

One of these parameters must be set.

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to the users who are members of the network with role manager.




## Update a Membership

> Membership updated

```json
{
  "status": "success"
}
```

> Membership update failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`PUT https://api.hashtag.be/api/v5/networks/memberships`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
role | no | reader, user, trusted_contributor, or network_manager | user
professional_level | no | unknown, starter, professional, master | unknown
want_digest | no | true or false | true

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to the users who are members of the network with role manager, and to the member user themselves. Only network managers can change the fields role or professional level, only the user themselves can change want_digest.





## Delete a Membership

> Membership deleted

```json
{
  "status": "success"
}
```

> Membership was not deleted

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/networks/memberships`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
membership_id | yes | integer membership id

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to the users who are members of the network with role manager, and to the member user themselves.

