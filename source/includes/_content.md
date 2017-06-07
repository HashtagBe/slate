# Contents

## Get Contents List
> The API returns JSON structured like this:

```json
{
"status": "success",
  "data": [
    {
      "id": 1,
      "email": "admin1@hashtag.be",
      "country": null,
      "role": "admin",
      "first_name": "Admin",
      "last_name": "Istrator",
      "gender": null,
      "image": {
        "url":
        "https://d19sjrth63kcaj.cloudfront.net/production/assets/logo.png"
      },
      "birthday": null,
      "content_languages": [
        "en",
        "it"
      ],
      "last_login_at": "2017-01-26T09:00:13.000Z"
    },
    {
      "id": 2,
      "email": "chris@hashtag.be",
      "country": "US",
      "role": "user",
      "first_name": "Chris",
      "last_name": "Gibson",
      "gender": "male",
      "image": {
        "url":
        "https://d19sjrth63kcaj.cloudfront.net/production/assets/logo.png"
      },
      "birthday": null,
      "content_languages": [
        "en",
        "it"
      ],
      "last_login_at": "2016-11-15T09:44:41.000Z"
    }]
}
```

This endpoint retrieves all users.

### HTTP Request

`GET hostname/api/v4/users`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
offset | 0 |
limit| 20 | valid range is 1..150

<aside class="success">
Remember — a happy kitten is an authenticated kitten!
</aside>

## Get a Specific Content

> Set detail to true and get full version

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

`GET hostname/api/v4/contents/<id>`

### URL Parameters

Parameter | Description
--------- | -----------
id * | The id of the user to retrieve
detail | Default value: false


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

`POST hostname/api/v4/contents`

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

`DELETE hostname/api/v4/contents/<id>`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
id * |  | string



## Launch content to a specific network

> If network is updated successfully

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

> If network is updated successfully

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

## Update a User

```ruby
require 'kittn'

api = Kittn::APIClient.authorize!('meowmeowmeow')
api.kittens.get
```

```python
import kittn

api = kittn.authorize('meowmeowmeow')
api.kittens.get()
```

```shell
curl "http://example.com/api/kittens"
  -H "Authorization: meowmeowmeow"
```

```javascript
const kittn = require('kittn');

let api = kittn.authorize('meowmeowmeow');
let kittens = api.kittens.get();
```

> If network is updated successfully

```json
{
  "status": "success"
}
```

> Other failed cases please refer <a href= "#create-a-network">Create a Network API</a>

This endpoint update a user

### HTTP Request

`PATCH hostname/api/v4/users/<id>`
`PUT hostname/api/v4/users/<id>`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
id * |  | string
email * |  | string
password * |  | string
first_name * |  | string
last_name *  |  | string
role  | user | user admin staff
country  |  | iso country code
gender  | male | female
image  |  | file
birthday  |  | datetime


<aside class="success">
Note: Referring <a href= "#create-a-user">Create a User API</a> for validation rules.
</aside>
