# Content Creation

## Create Content

> Content created

```json
{
  "status": "success"
}
```

> Content creation failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`POST https://api.hashtag.be/api/v5/content`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------

### Access Rights

This endpoint requires an API token in the request header.

<aside class="notice">
Not finished, don't test yet.
</aside>




## Read Content

> Content response

```json
{
    "status": "success",
    "data": {
        "content": {
            
        }
    }
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/content`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
content_id | yes | integer content id

### Access Rights

This endpoint requires an API token in the request header.

<aside class="notice">
Not finished, don't test yet.
</aside>



## Update Content

> Content updated

```json
{
  "status": "success"
}
```

> Content update failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`PUT https://api.hashtag.be/api/v5/content`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
content_id | yes | |

### Access Rights

This endpoint requires an API token in the request header.

<aside class="notice">
Not finished, don't test yet.
</aside>




## Delete Content

> Content deleted

```json
{
  "status": "success"
}
```

> Content was not deleted

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/content`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
content_id | yes | integer content id

### Access Rights

This endpoint requires an API token in the request header.

<aside class="notice">
Not finished, don't test yet.
</aside>




## Extract Content from a URL

> Content extracted

```json
{
  "status": "success"
  "data": {
    "extracted_content": {

    }
  }
}
```

> Content was not extracted

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/content/extract`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
url | yes | 

### Access Rights

This endpoint requires an API token in the request header.
