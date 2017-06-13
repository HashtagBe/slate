# Users

## Get All Users
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

`GET hostname/api/v4/users.json`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
offset | 0 |
limit| 20 | valid range is 1..150

## Get a Specific User

> The API returns JSON structured like this:

```json
{
  "status": "success",
  "data": {
    "id": 980,
    "email": "abc@hashtag.be",
    "country": "",
    "role": "staff",
    "first_name": "abc",
    "last_name": "abc",
    "gender": "male",
    "image": {
      "url": "https://d19sjrth63kcaj.cloudfront.net/production/assets/logo.png"
    },
    "birthday": "2000-01-31",
    "content_languages": [
      "en",
      "it",
      "zh-CN"
    ],
    "last_login_at": "2017-05-23T08:07:57.000Z"
  }
}
```

This endpoint retrieves a specific user.

### HTTP Request

`GET hostname/api/v4/users/<id>.json`

### URL Parameters

Parameter | Description
--------- | -----------
id * | The id of the user to retrieve

## Create a User

> If user is created successfully

```json
{
  "status": "success"
}
```

> else if email | first_name | last_name | password is missing

```json
{
  "status": "fail",
  "msg": "param is missing or the value is empty: XXX"
}
```

> else if email has been taken

```json
{
  "status": "fail",
  "msg": {
    "email": [
      "has already been taken"
    ]
  }
}
```


This endpoint create a user

### HTTP Request

`POST hostname/api/v4/users.json`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
email * |  | string
password * |  | string
first_name * |  | string
last_name *  |  | string
role  | user | user admin staff
country  |  | iso country code
gender  | male | female
image  |  | file
birthday  |  | datetime

### Validation Rules

Parameter |  Rules
--------- |  -----------
*email* | Presence
 | Uniqueness
 | Must be all downcase
 | Must be email format
 | Max length is 255
*first_name* | Presence
*last_name* | Presence
*password* | Min length is 6
*country* | Mush be iso country code
 | allow_blank
*image* | Mush be image(jpg jpeg gif png)
 | Less than 1 megabyte

 <aside class="notice">
 Note: Referring <a href= "https://en.wikipedia.org/wiki/ISO_3166-1">ISO_3166-1</a> for validate country code.
 </aside>

## Delete a User

> If user is deleted successfully

```json
{
  "status": "success"
}
```

> else if user is not exist with given id

```json
{
  "status": "fail",
  "msg": "user is not exist"
}
```

This endpoint delete a user

### HTTP Request

`DELETE hostname/api/v4/users/<id>`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
id * |  | string

## Update a User

> If user is updated successfully

```json
{
  "status": "success"
}
```

> Other failed cases please refer <a href= "#create-a-user">Create a User API</a>

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
