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

`GET https://api.hashtag.be/api/v5/notifications`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
user_id | yes | integer user id
network_id | no | integer network id | all networks

### Access Rights

This endpoint requires an API token in the request header.
