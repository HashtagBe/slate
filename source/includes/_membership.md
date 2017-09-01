# Memberships

## Get Membership List

> Get network members successfully

```json
{
    "status": "success",
    "data": {
        "members": [
            {
                "user_id": 1,
                "first_name": "Admin",
                "last_name": "Istrator",
                "email": "admin@hashtag.be",
                "role": "network_manager",
                "professional_level": "unknown",
                "created_at": 1503646515000,
                "last_login_at": 1504163807000,
                "nwidgets_created": 70
            },
            {
                "user_id": 2,
                "first_name": "test",
                "last_name": "api",
                "email": "test@api.com",
                "role": "user",
                "professional_level": "unknown",
                "created_at": 1504163794000,
                "last_login_at": 1504163795000,
                "nwidgets_created": 0
            }
        ]
    }
}
```

Get user list of specified network

### HTTP Request

`GET hostname/api/v4/memberships.json`

### Query Parameters

Parameter   | Default | Description
----------- | ------- | -----------
network_id* |         |

<aside class="notice">
Only network_manager is allowed to call this api
</aside>

## Join a network

> Join a network successfully

```json
{
  "status": "success"
}
```

> If the user has joined already

```json
{
  "status": "fail",
  "msg": {
    "user": [
      "has already been taken"
    ]
  }
}
```

Make a user join to specific network

### HTTP Request

`GET hostname/api/v4/users/<user_id>/join/<network_id>.json`

### Query Parameters

Parameter   | Default | Description
----------- | ------- | -----------------------------------------------------------
user_id*    |         |
network_id* |         |
role        | user    | user network_manager editor contributor trusted_contributor

<aside class="notice">
This API can also be used to update role for joined user.
</aside>

## Leave a network

> leave a network successfully

```json
{
  "status": "success"
}
```

> Or if the user not in the network

```json
{
  "status": "fail",
  "msg": "The user is not a member of this network"
}
```

Make a user leave specific network

### HTTP Request

`DELETE hostname/api/v4/users/<user_id>/leave/<network_id>.json`

### Query Parameters

Parameter   | Default | Description
----------- | ------- | -----------
user_id*    |         |
network_id* |         |
