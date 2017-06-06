# Widget Types

## Get #be Widget Types List
> The API returns JSON structured like this:

```json
{
  "status": "success",
  "data": [
    {
      "id": 1,
      "name": "article"
    },
    {
      "id": 2,
      "name": "event"
    },
    {
      "id": 3,
      "name": "announcement"
    },
    {
      "id": 4,
      "name": "reward"
    },
    {
      "id": 5,
      "name": "web"
    },
    {
      "id": 6,
      "name": "post"
    },
    {
      "id": 7,
      "name": "file"
    },
    {
      "id": 8,
      "name": "featured"
    },
    {
      "id": 9,
      "name": "video"
    },
    {
      "id": 10,
      "name": "guidelines"
    },
    {
      "id": 11,
      "name": "training"
    },
    {
      "id": 12,
      "name": "shared"
    },
    {
      "id": 13,
      "name": "activity"
    }
  ]
}
```

This endpoint retrieves all widget types that available in #be.

### HTTP Request

`GET hostname/api/v4/widget_types`

<aside class="success">
Note: This is public API, can be accessed without token.
</aside>



## Get Network Widget Types List

> Widget Types that available in specific network

```json
{
  "status": "success",
  "data": [
    {
      "id": 1,
      "name": "article"
    },
    {
      "id": 2,
      "name": "event"
    },
    {
      "id": 3,
      "name": "announcement"
    },
    {
      "id": 4,
      "name": "reward"
    },
    {
      "id": 11,
      "name": "training"
    },
    {
      "id": 12,
      "name": "shared"
    },
    {
      "id": 13,
      "name": "activity"
    }
  ]
}
```

This endpoint get widget types that available in specific network

### HTTP Request

`GET hostname/api/v4/widget_types`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
network |  | string
