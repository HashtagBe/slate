---
title: API Reference

language_tabs:
  - shell
  - ruby
  - python
  - javascript

toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>
  - <a href='https://github.com/tripit/slate'>Documentation Powered by Slate</a>

includes:
  - errors

search: true
---

# Introduction

Welcome to the Kittn API! You can use our API to access Kittn API endpoints, which can get information on various cats, kittens, and breeds in our database.

We have language bindings in Shell, Ruby, and Python! You can view code examples in the dark area to the right, and you can switch the programming language of the examples with the tabs in the top right.

This example API documentation page was created with [Slate](https://github.com/tripit/slate). Feel free to edit it and use it as a base for your own API's documentation.

# Authentication

> To authorize, use this code:

```ruby
require 'kittn'

api = Kittn::APIClient.authorize!('meowmeowmeow')
```

```python
import kittn

api = kittn.authorize('meowmeowmeow')
```

```shell
# With shell, you can just pass the correct header with each request
curl "api_endpoint_here"
  -H "Authorization: meowmeowmeow"
```

```javascript
const kittn = require('kittn');

let api = kittn.authorize('meowmeowmeow');
```

> Make sure to replace `meowmeowmeow` with your API key.

Kittn uses API keys to allow access to the API. You can register a new Kittn API key at our [developer portal](http://example.com/developers).

Kittn expects for the API key to be included in all API requests to the server in a header that looks like the following:

`Authorization: meowmeowmeow`

<aside class="notice">
You must replace <code>meowmeowmeow</code> with your personal API key.
</aside>

# Networks

## Get All Networks

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

> The above command returns JSON structured like this:

```json
{
  "status": "success",
  "data": [
    {
      "id": 1,
      "name": "dummy1",
      "full_name": "Dummy1",
      "memberships_count": 4,
      "website": null,
      "access_type": "open",
      "links": {},
      "can_target_by_role": false,
      "can_target_by_user": false,
      "personalize_network_banner": false,
      "can_share_widgets": true,
      "allow_contributor_role": false,
      "color": "#ff9b00",
      "icon": {
        "url": null
      },
      "banner": {
        "url": null
      },
      "background": {
        "url": null
      }
    },
    {
      "id": 2,
      "name": "dummy2",
      "full_name": "Dummy2",
      "memberships_count": 289,
      "website": "http://www.dummy2.it",
      "access_type": "open",
      "links": {},
      "can_target_by_role": false,
      "can_target_by_user": false,
      "personalize_network_banner": false,
      "can_share_widgets": true,
      "allow_contributor_role": false,
      "color": "#c71410",
      "icon": {
        "url": null
      },
      "banner": {
        "url": null
      },
      "background": {
        "url": null
      }
    }]
}

```

This endpoint retrieves all networks.

### HTTP Request

`GET hostname/api/v4/networks`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
offset | 0 |
limit| 20 | valid range is 1..150

<aside class="success">
Remember — a happy kitten is an authenticated kitten!
</aside>

## Get a Specific Network

```ruby
require 'kittn'

api = Kittn::APIClient.authorize!('meowmeowmeow')
api.kittens.get(2)
```

```python
import kittn

api = kittn.authorize('meowmeowmeow')
api.kittens.get(2)
```

```shell
curl "http://example.com/api/kittens/2"
  -H "Authorization: meowmeowmeow"
```

```javascript
const kittn = require('kittn');

let api = kittn.authorize('meowmeowmeow');
let max = api.kittens.get(2);
```

> The above command returns JSON structured like this:

```json
{
  "status": "success",
  "data": {
    "id": 1,
    "name": "dummy1",
    "full_name": "Dummy1",
    "memberships_count": 4,
    "website": null,
    "access_type": "open",
    "links": {},
    "can_target_by_role": false,
    "can_target_by_user": false,
    "personalize_network_banner": false,
    "can_share_widgets": true,
    "allow_contributor_role": false,
    "color": "#ff9b00",
    "icon": {
      "url": null
    },
    "banner": {
      "url": null
    },
    "background": {
      "url": null
    }
  }
}
```

This endpoint retrieves a specific network.

<aside class="warning">Inside HTML code blocks like this one, you can't use Markdown, so use <code>&lt;code&gt;</code> blocks to denote code.</aside>

### HTTP Request

`GET hostname/api/v4/networks/<id>`

### URL Parameters

Parameter | Description
--------- | -----------
id * | The id of the network to retrieve



## Create a Network

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

> If network is created successfully

```json
{
  "status": "success"
}
```

> else if name|full_name is missing

```json
{
  "status": "fail",
  "msg": "param is missing or the value is empty: full_name"
}
```

> else if name has been taken

```json
{
  "status": "fail",
  "msg": {
    "name": [
      "has already been taken"
    ]
  }
}
```

> else if access_type is not closed or open

```json
{
  "status": "fail",
  "msg": "access_type value is invalid"
}
```

This endpoint create a network

### HTTP Request

`POST hostname/api/v4/networks`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
name * |  | string
full_name * |  | string
website  |  | string
access_type  | closed | closed or open
links  |  | Json
can_target_by_role  | false | boolean
can_target_by_user  | false | boolean
personalize_network_banner  | false | boolean
can_share_widgets  | true | boolean
allow_contributor_role  | false | boolean
color  | #000000 | string(valid color code)
icon  |  | file
banner  |  | file
background  |  | file

### Validation Rules

Parameter |  Rules
--------- |  -----------
*name* | Presence
 | Uniqueness
 | Must be a valid twitter hashtag
 | Must be all downcase
 | Must not equal 'admin'
*full_name* | Presence
*website* | Mush match URL format
 | allow_blank
*links* | Mush match URL format
 | allow_blank
*icon* | Mush be image(jpg jpeg gif png)
 | Less than 1 megabyte
*banner* | Mush be image(jpg jpeg gif png)
 | Less than 2 megabytes
*background* | Mush be image(jpg jpeg gif png)
 | Less than 2 megabytes
*color* | Mush be valid color code
  | allow_blank

<aside class="success">
Remember — a happy kitten is an authenticated kitten!
</aside>


## Delete a Network

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

> If network is deleted successfully

```json
{
  "status": "success"
}
```

> else if network is not exist with given id

```json
{
  "status": "fail",
  "msg": "network is not exist"
}
```

This endpoint delete a network

### HTTP Request

`DELETE hostname/api/v4/networks/<id>`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
id * |  | string

<aside class="success">
Remember — a happy kitten is an authenticated kitten!
</aside>



## Update a Network

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

This endpoint update a network

### HTTP Request

`PATCH hostname/api/v4/networks/<id>`
`PUT hostname/api/v4/networks/<id>`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
id * |  | string
name * |  | string
full_name * |  | string
website  |  | string
access_type  | closed | closed or open
links  |  | Json
can_target_by_role  | false | boolean
can_target_by_user  | false | boolean
personalize_network_banner  | false | boolean
can_share_widgets  | true | boolean
allow_contributor_role  | false | boolean
color  | #000000 | string(valid color code)
icon  |  | file
banner  |  | file
background  |  | file

<aside class="success">
Note: Referring <a href= "#create-a-network">Create a Network API</a> for validation rules.
</aside>
