# Memberships

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

Parameter | Default | Description
--------- | ------- | -----------
user_id* |  |
network_id*|  |
role | user |user network_manager editor contributor trusted_contributor

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

Parameter | Default | Description
--------- | ------- | -----------
user_id* |  |
network_id*|  |
