# Fixed interest
<aside class="warning">Fixed interest can't be deleted</aside>
## Get All Fixed_interests
> The API returns JSON structured like this:

```json
{
  {
    "status": "success",
    "data": [
      {
        "id": 2,
        "name": "Fixed2",
        "language": "en"
      },
      {
        "id": 3,
        "name": "Fixed3",
        "language": "en"
      }
      {......}
    ]
  }
}
```

This endpoint retrieves all fixed_interests.

### HTTP Request

`GET hostname/api/v4/fixed_interests`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
offset | 0 |
limit| 20 | valid range is 1..150
network |  | network name | get all fixed_interests of a specific network
undistributed| false | get all fixed_interests without network information


## Get a Specific Fixed_interest

> The API returns JSON structured like this:

```json
{
  {
    "status": "success",
    "data": [
      {
        "id": 2,
        "name": "Fixed2",
        "language": "en"
      }
    ]
  }
}
```

This endpoint retrieves a specific fixed_interest.
### HTTP Request

`GET hostname/api/v4/fixed_interests/<id>`

### URL Parameters

Parameter | Description
--------- | -----------
id * | The id of the fixed_interest to retrieve

## Create a Fixed_interest

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

> If fixed_interest is created successfully

```json
{
  "status": "success"
}
```

> else if network is not exist

```json
{
  "status": "fail",
  "msg": "The Network not exist"
}
```

> else if the fixed_interest exist in the scope of language and network

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


This endpoint create a fixed_interest

### HTTP Request

`POST hostname/api/v4/fixed_interests`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
name * |  | string
network |  | create fixed_interest for specific network

### Validation Rules

Parameter |  Rules
--------- |  -----------
*name* | Presence
 | Uniqueness in the scope of language and network
 *network* | Exist network name

<aside class="success">
Remember — a happy kitten is an authenticated kitten!
</aside>

## Update a Fixed_interest

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

`PATCH hostname/api/v4/fixed_interests/<id>`
`PUT hostname/api/v4/fixed_interests/<id>`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
id * |  | string
name * |  | string
