# Notifications

## Retrieving Notifications

> Notifications successfully retrieved

```json
{
  "status": "success",

}
```

> Request for notifications failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/users/notifications`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
user_id | yes | integer user id
from | no | integer | 0
nnotifications | no | integer | 1000

### Access Rights

This endpoint requires an API token in the request header.
