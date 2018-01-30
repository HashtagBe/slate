# Content Creation from RSS

<aside class="warning">
Not finished, don't test yet.
</aside>

## Create an RSS Reader

> RSS reader created

```json
{
  "status": "success"
}
```

> RSS reader creation failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`POST https://api.hashtag.be/api/v5/content/rss`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
network_id | yes | |

### Access Rights

This endpoint requires an API token in the request header.





## Read RSS Content

> Content response

```json
{
    "status": "success",
    "data": {
      "content": [
        {
          ... content 0 fields ...
        },
       {
         ... content 1 fields ...
       },
       ...
      ]
    }
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/content/rss`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
rss_id | yes | integer rss id

### Access Rights

This endpoint requires an API token in the request header.




## Update RSS Reader Settings

> RSS reader updated

```json
{
  "status": "success"
}
```

> RSS reader update failed

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`PUT https://api.hashtag.be/api/v5/content/rss`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
rss_id | yes | integer rss reader id |

### Access Rights

This endpoint requires an API token in the request header.




## Delete RSS Reader

> RSS reader deleted

```json
{
  "status": "success"
}
```

> RSS reader was not deleted

```json
{
  "status": "fail",
  "message": "..."
}
```

This also deletes all content created from this RSS.

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/content/rss`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
rss_id | yes | integer rss reader id

### Access Rights

This endpoint requires an API token in the request header.
