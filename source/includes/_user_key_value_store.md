# User Key-Value Store

This is a key-value store for each user, which also contains an integer parameter called context. Normally, a network id will be used for the context. But other usages are possible. Keys are unique on user, context, and key, thus this is a quad key-value store.




## Create a Quad

> Quad successfully created

```json
{
  "status": "success"
}
```

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

> Value successfully retrieved

```json
{
  "status": "success",
  "data": {
  	"value": "abc"
  }
}
```

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

> Quad successfully updated

```json
{
  "status": "success"
}
```

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

> Quad successfully deleted

```json
{
  "status": "success"
}
```

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