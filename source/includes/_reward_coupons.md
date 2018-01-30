# Reward Coupons

## Create a Reward Coupon

> Coupon created

```json
{
  "status": "success"
}
```

> Coupon creation failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`POST https://api.hashtag.be/api/v5/content/rewards/coupons`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
network_id | yes | integer network id |
user_id | yes | integer user id |
coupon_code | yes | string |
is_reusable | no | true or false | false

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to users.




## Read a Coupon

> Read coupon response

```json
{
    "status": "success",
    "data": {
        "coupon": {
            "coupon_id": 3,
            "coupon_code": "",
            "user_id": 1,
            "is_reusable": false,
            "claimed": "false",
            "created_at": 1516855944184,
            "updated_at": 1516855944184
        }
    }
}
```

> Coupon read failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/content/rewards/coupons`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
coupon_id | yes | integer coupon id

One of these parameters must be set.

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to the users who are members of the network with role manager.




## Update a Coupon

> Coupon updated

```json
{
  "status": "success"
}
```

> Coupon update failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`PUT https://api.hashtag.be/api/v5/content/rewards/coupons`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
coupon_id | yes | |
coupon_code | yes | string |

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to the users who are members of the network with role manager, and to the member user themselves. Only network managers can change the fields role or professional level, only the user themselves can change want_digest.





## Delete a Coupon

> Coupon deleted

```json
{
  "status": "success"
}
```

> Coupon was not deleted

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/content/rewards/coupons`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
coupon_id | yes | integer coupon id

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to the users who are members of the network with role manager, and to the member user themselves.

