# File Upload 

<aside class="warning">
Not finished, don't test yet.
</aside>

## Upload a File

> File successfully stored

```json
{
  "status": "success",
  {
    "upload_id": 123,
    "url": ""
  }
}
```

> Request to store file failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`POST https://api.hashtag.be/api/v5/upload`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
user_id | yes | integer user id

### Access Rights

This endpoint requires an API token in the request header.





## Recovering a File URL

> Successful request for the file url

```json
{
    "status": "success",
    "data": {
        "url": ""
    }
}
```

> Request for the file url failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/upload/url`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
upload_id | yes | |

### Access Rights

This endpoint requires an API token in the request header.





## Recovering a File in Base 64 format

> Successful request for the file

```json
{
    "status": "success",
    "data": {
        "base64": ""
    }
}
```

> Request for the file failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/upload/file`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
upload_id | yes | |

### Access Rights

This endpoint requires an API token in the request header.