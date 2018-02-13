# [Completed but not online] Network Syndication



## Create a Network Syndication

> Data successfully stored

```json
{
  "status": "success"
  "credits_earned": 123
}
```

> Request to store data failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`POST https://api.hashtag.be/api/v5/networks/syndication`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
publisher_id | yes | integer network id
syndicator_id | yes | integer network id
publish_automatically | no | true or false | true
widget_type_ids | no | comma separated list of widget type ids | all widget types

### Access Rights

This endpoint requires an API token in the request header.





## Reading the Settings of a Network Syndication

> Successful request for the network syndication

```json
{
    "status": "success",
    "data": {
        
    }
}
```

> Request for the network syndication

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/networks/syndication`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
network_id | yes | |

### Access Rights

This endpoint requires an API token in the request header.




## Update a Network Syndication's Settings

> If the network syndication settings are updated successfully

```json
{
  "status": "success"
}
```

> If the network syndication settings are not updated

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`PUT https://api.hashtag.be/api/v5/networks/syndications`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
network_syndication_id | yes | |
publish_automatically | no | true or false | true
widget_type_ids | no | comma separated list of widget type ids | all widget types

### Access Rights

This endpoint requires an API token in the request header, and is only accessible to users who are members of the network with role manager.




## Delete a Network Syndication

> If the network syndication is deleted successfully

```json
{
  "status": "success"
}
```

> If the network syndication is not deleted

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/networks/syndications`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
network_syndication_id   | yes      | integer network syndication id

### Access Rights

This endpoint requires an API token in the request header, and is only accessible to users who are members of the network with role manager.



