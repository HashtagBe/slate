# [Not Completed] Uploads


## Create an Upload

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

`POST https://api.hashtag.be/api/v5/uploads`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
user_id | yes | integer user id |
usage | yes | attachment, network_logo, network_banner, network_background, content_image, user_image |
data | yes | base 64 data |

### Access Rights

This endpoint requires an API token in the request header.





## Read an Upload

> Successful request for the upload

```json
{
    "status": "success",
    "data": {
        "url": ""
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

`POST https://api.hashtag.be/api/v5/uploads`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
upload_id | yes | integer identifier

### Access Rights

This endpoint requires an API token in the request header.





## Delete an Upload

> Upload successfully deleted

```json
{
    "status": "success"
}
```

> Upload not deleted

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/uploads`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
upload_id | yes | integer identifier

### Access Rights

This endpoint requires an API token in the request header.
