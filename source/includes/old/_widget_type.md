# Widget Types

## Get #be Widget Types List
> The API returns JSON structured like this:

```json
{
    "status": "success",
    "data": [
        {
            "name": "unknown"
        },
        {
            "name": "article"
        },
        {
            "name": "event"
        },
        {
            "name": "announcement"
        },
        {
            "name": "reward"
        },
        {
            "name": "web"
        },
        {
            "name": "post"
        },
        {
            "name": "file"
        },
        {
            "name": "featured"
        },
        {
            "name": "video"
        },
        {
            "name": "guidelines"
        },
        {
            "name": "training"
        },
        {
            "name": "shared"
        },
        {
            "name": "activity"
        }
    ]
}
```

This endpoint retrieves all widget types that available in #be.

### HTTP Request

`GET hostname/api/v4/widget_types.json`

## Get Network Widget Types List

> Widget Types that available in specific network

```json
{
    "status": "success",
    "data": [
        {
            "name": "article"
        },
        {
            "name": "event"
        },
        {
            "name": "announcement"
        },
        {
            "name": "reward"
        },
        {
            "name": "web"
        },
        {
            "name": "post"
        },
        {
            "name": "file"
        },
        {
            "name": "video"
        },
        {
            "name": "activity"
        }
    ]
}
```

> If network_id is invalid

```json
{
    "status": "fail",
    "msg": "network is not exist"
}
```

This endpoint get widget types that available in specific network

### HTTP Request

`GET hostname/api/v4/widget_types.json`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
network_id |  | integer
