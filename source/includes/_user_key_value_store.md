# User Key-Value Store

This is a key-value store for each user, which also contains an integer parameter called context. Normally, a network id will be used for the context. But other usages are possible. Keys are unique on user, context, and key, thus this is a quad key-value store.




## Create a Quad

### HTTP Request

`POST https://api.hashtag.be/api/v5/users/key_value_store`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
user_id | yes | integer user id |
context_id | yes | integer context id |
key | yes | string |
value | yes | string |


### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to users.




## Read Values

### HTTP Request

`GET https://api.hashtag.be/api/v5/users/key_value_store`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
user_id | yes | integer user id |
context_id | yes | integer context id |
key | yes | comma separated strings |

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to users.




## Update a Value

### HTTP Request

`PUT https://api.hashtag.be/api/v5/users/key_value_store`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
user_id | yes | integer user id |
context_id | yes | integer context id |
key | yes | string |
value | yes | string |

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to users.




## Remove Quad

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/users/key_value_store`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
user_id | yes | integer user id |
context_id | yes | integer context id |
key | yes | string |


### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to users.