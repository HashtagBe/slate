# User Key-Value Store

This is a key-value store for each user, which also contains an integer parameter called context. Normally, a network id will be used for the context. But other usages are possible. Keys are unique on user, context, and key.




## Create a User- Context- Key- Value Quad

> Quad successfully created

```json
{
  "status": "success"
}
```

> Quad creation failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`POST https://api.hashtag.be/api/v5/users/key_value_store`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
user_id | yes | integer user id |
key | yes | string |
value | yes | string |
context_id | no | integer context id | 0

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to users.




## Read Values

> Values successfully retrieved

```json
{
  "status": "success",
  "data": {
  	"values": ["abc", null, "def", "ghi"]
  }
}
```

> Request for values failed

```json
{
  "status": "fail",
  "message": "..."
}
```

In the case where a requested key does not exist, null is returned.

### HTTP Request

`GET https://api.hashtag.be/api/v5/users/key_value_store`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
user_id | yes | integer user id |
keys | no | comma separated strings | all keys
context_id | no | integer context id | 0

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to users.




## Update a Value

> Quad successfully updated

```json
{
  "status": "success"
}
```

> Quad update failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`PUT https://api.hashtag.be/api/v5/users/key_value_store`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
user_id | yes | integer user id |
key | yes | string |
value | yes | string |
context_id | no | integer context id | 0

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to users.




## Remove User- Context- Key- Value Quad

> Quad successfully deleted

```json
{
  "status": "success"
}
```

> Quad deletion failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/users/key_value_store`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
user_id | yes | integer user id |
key | yes | string |
context_id | no | integer context id | 0

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to users.