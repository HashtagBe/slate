# Contents

## Get Contents List
> The API returns JSON structured like this:

```json
{
  "status": "success",
  "data": [
    {
      "id": XXX,
      "title": "Bing",
      "subtitle": null,
      "authors": "",
      "abstract": "Bing helps you turn information into action, making it faster and easier to go from searching to doing.",
      "state": "ready",
      "source": "manual_input",
      "content_languages": [
        "en"
      ],
      "url": "http://www.bing.com/",
      "video_url": null,
      "flipsnack_url": null,
      "website_url": "http://www.bing.com",
      "free_tags": null,
      "event_end": null,
      "event_start": null,
      "event_datetime": null,
      "publish_datetime": null,
      "online_datetime": null,
      "venue": null,
      "price": null,
      "created_at": "2017-06-07T09:10:29.000Z",
      "updated_at": "2017-06-07T09:10:29.000Z",
      "organizer": null,
      "user_id": 1,
      "network_id": null,
      "network_source_id": null,
      "timeliness": "month",
      "image_width": null,
      "image_height": null,
      "coupon_code": null,
      "creators_comment": null,
      "reward_url": null,
      "expires_at": "2017-07-07T09:10:29.000Z",
      "nclaimed": 0,
      "nstock": null,
      "targeted_user_ids": null,
      "targeted_roles": null,
      "is_challenge_reward": true,
      "attachment_content_type": null,
      "attachment_file_size_bytes": null,
      "widget_type": "article"
    },
    {...}
  ]
}
```

This endpoint retrieves all contents.

### HTTP Request

`GET hostname/api/v4/contents.json`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
offset | 0 |
limit| 20 | valid range is 1..150


## Get a Specific Content

> Set detail to true and get full version

```json
{
  "status": "success",
  "data": {
    "id": XXX,
    "title": "这篇不错",
    "subtitle": null,
    "authors": null,
    "abstract": null,
    "state": "not_saved",
    "source": "manual_input",
    "content_languages": [
      "zh-CN"
    ],
    "url": null,
    "video_url": null,
    "flipsnack_url": null,
    "website_url": null,
    "free_tags": null,
    "event_end": null,
    "event_start": null,
    "event_datetime": null,
    "publish_datetime": null,
    "online_datetime": null,
    "venue": null,
    "price": null,
    "created_at": "2017-06-05T08:48:29.000Z",
    "updated_at": "2017-06-05T08:48:29.000Z",
    "organizer": null,
    "user_id": null,
    "network_id": null,
    "network_source_id": null,
    "timeliness": "day",
    "image_width": null,
    "image_height": null,
    "coupon_code": null,
    "creators_comment": null,
    "reward_url": null,
    "expires_at": "2017-06-06T08:48:29.000Z",
    "nclaimed": 0,
    "nstock": null,
    "targeted_user_ids": null,
    "targeted_roles": null,
    "is_challenge_reward": true,
    "attachment_content_type": null,
    "attachment_file_size_bytes": null,
    "widget_type": "article"
  }
}
```

> Set detail to false and get simplified version

```json
{
  "status": "success",
  "data": {
    "id": 25858,
    "title": "这篇不错",
    "subtitle": null,
    "authors": null,
    "abstract": null,
    "state": "not_saved",
    "source": "manual_input",
    "url": null,
    "widget_type": "article"
  }
}
```

This endpoint retrieves a specific content.

<aside class="notice">We provide two versions of response, simplified version is the default one, if you need all attributes of content, please set <code>detail</code> as true</aside>

### HTTP Request

`GET hostname/api/v4/contents/<id>.json`

### URL Parameters

Parameter | Description
--------- | -----------
id * | The id of the user to retrieve
detail | Default value: false

## Extract Content

> extract result show as below

```json
{
  "status": "success",
  "data": {
    "id": null,
    "title": "Bing",
    "subtitle": null,
    "authors": "",
    "abstract": "Bing helps you turn information into action, making it faster and easier to go from searching to doing.",
    "state": "ready",
    "source": "manual_input",
    "content_languages": [
      "en"
    ],
    "url": "http://www.bing.com/",
    "video_url": null,
    "flipsnack_url": null,
    "website_url": "http://www.bing.com",
    "free_tags": null,
    "event_end": null,
    "event_start": null,
    "event_datetime": null,
    "publish_datetime": null,
    "online_datetime": null,
    "venue": null,
    "price": null,
    "created_at": null,
    "updated_at": null,
    "organizer": null,
    "user_id": null,
    "network_id": null,
    "network_source_id": null,
    "timeliness": "month",
    "image_width": null,
    "image_height": null,
    "coupon_code": null,
    "creators_comment": null,
    "reward_url": null,
    "expires_at": null,
    "nclaimed": 0,
    "nstock": null,
    "targeted_user_ids": null,
    "targeted_roles": null,
    "is_challenge_reward": true,
    "attachment_content_type": null,
    "attachment_file_size_bytes": null,
    "widget_type": "web"
  }
}
```

This endpoint extract content with url provided

### HTTP Request

`GET hostname/api/v4/extract.json`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
url * |  | extract url
save_flag | false | save the extracted content when true

### Validation Rules
Parameter |  Rules
--------- |  -----------
*url* | Presence

## Create a Content

> If content is created successfully, response content id back

```json
{
  "status": "success",
  "data": {
    "id": 1
  }
}
```

> else if parameter is invalid

```json
{
  "status": "fail",
  "msg": "param is missing or the value is empty: XXX"
}
```

This endpoint create a content

### HTTP Request

`POST hostname/api/v4/contents.json`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
title * |  | string
widget_type_id * |  | integer
abstract |  | text
timeliness |  | text
targeted_roles|  | array
targeted_user_ids|  | array
image|  | file
attachment|  | file
fixed_interests|  | array of fixed_interests name
content_languages|  | array
### Validation Rules

Parameter |  Rules
--------- |  -----------
*title* | Presence
*widget_type_id* | Presence
*attachment* | Less than 5 megabytes

<aside class="success">
Available widget type id please refer <a href="#get-be-widget-types-list">Get #BE Widget Types List API</a>
</aside>



## Update a Content

> If content is updated successfully

```json
{
  "status": "success"
}
```

This endpoint update a content

### HTTP Request

`PUT hostname/api/v4/contents/<id>.json`

`PATCH hostname/api/v4/contents/<id>.json`
### Parameters

Parameter | Default | Description
--------- | ------- | -----------
id * |  | string
title * |  | string
widget_type_id * |  | integer
abstract |  | text
timeliness |  | text
targeted_roles|  | array
targeted_user_ids|  | array
image|  | file
attachment|  | file
fixed_interests|  | array of fixed_interests name
content_languages|  | array
### Validation Rules

Parameter |  Rules
--------- |  -----------
*title* | Presence
*widget_type_id* | Presence
*attachment* | Less than 5 megabytes

<aside class="success">
Available widget type id please refer <a href="#get-be-widget-types-list">Get #BE Widget Types List API</a>
</aside>


## Delete a Content

> If content is deleted successfully

```json
{
  "status": "success"
}
```

> else if content is not exist with given id

```json
{
  "status": "fail",
  "msg": "content is not exist"
}
```

This endpoint delete a content

### HTTP Request

`DELETE hostname/api/v4/contents/<id>.json`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
id * |  | string



## Launch content to a specific network

> Launched successfully

```json
{
  "status": "success"
}
```

Content creator can use this endpoint to put a content to a specific network.

### HTTP Request

`GET hostname/api/v4/contents/<id>/launch_to_network.json`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
id * |  | string
network_id * |  | string


## Pick content to a specific network

> Launched successfully

```json
{
  "status": "success"
}
```

This endpoint is for network manager to pick contents to specific network.

### HTTP Request

`GET hostname/api/v4/contents/<id>/pick.json`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
id * |  | string
network_id * |  | string
