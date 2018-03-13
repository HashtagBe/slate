# Reward Coupons

## Create a Reward Coupon

### HTTP Request

`POST https://api.hashtag.be/api/v5/content/rewards/coupons`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
coupon_code | yes | string |
is_reusable | no | true or false | false
content_id | no | integer content id |

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to users.




## Read a Coupon

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

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/content/rewards/coupons`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
coupon_id | yes | integer coupon id

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to the users who are members of the network with role manager, and to the member user themselves.

