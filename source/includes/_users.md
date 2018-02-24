# Users

## Create a User

> If user is created successfully

```json
{
    "status": "success",
    "user": {
        ... user parameters ...
    }
}
```

### HTTP Request

`POST https://api.hashtag.be/api/v5/users`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
email     | yes | |
password  | yes | |
password_confirmation | yes | |
first_name | yes | |
last_name | yes | |
country | no | numeric iso country code |
gender | no | unknown, male, female, or other | unknown
birthday | no | 13 digit ms unix timestamp
avatar_id | no | integer id of an image upload

### Access Rights

This is a public endpoint accessible to all. It does not require an API token in the request header.

<aside class="notice">
Numeric ISO 3166 country codes are listed <a href= "https://en.wikipedia.org/wiki/ISO_3166-1">here</a>.
</aside>




## [Not completed] Create a User using Facebook OAuth2

> If user is created successfully

```json
{
    "status": "success",
    "data": {
        "api_token": "1499efbe07c031d32d24dd3dd20c004a"
    }
}
```

### HTTP Request

`POST https://api.hashtag.be/api/v5/users/facebook`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------

### Access Rights

This is a public endpoint accessible to all. It does not require an API token in the request header.




## [Not completed] Create a User using a MediKey Account

> If user is created successfully

```json
{
    "status": "success",
    "data": {
        "api_token": "1499efbe07c031d32d24dd3dd20c004a"
    }
}
```

### HTTP Request

`POST https://api.hashtag.be/api/v5/users/medikey`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------

### Access Rights

This is a public endpoint accessible to all. It does not require an API token in the request header.





## Read a User's Settings

> User settings response

```json
{
    "status": "success",
    "data": {
        "user": {
            "user_id": 1,
            "full_name": "John Wayne",
            "first_name": "John",
            "last_name": "Wayne",
            "email": "john_wayne@hashtag.be",
            "role": "staff",
            "gender": "unknown",
            "api_token": "0a6d4c91cda5b35e6a7604039bf7ed2f",
            "memberships": [
                {
                    "membership_id": 3,
                    "network_id": 1,
                    "user_id": 1,
                    "role": "network_manager",
                    "professional_level": "starter",
                    "want_digest": true,
                    "created_at": 1516855944184,
                    "ncontent_created": 0,
                    "ncontent_shared": 0
                }
            ]
        }
    }
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/users`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
user_id   | yes      | integer user id

### Access Rights

This endpoint requires an API token in the request header, and is only accessible to the user themselves.

### Response Parameters

Parameter | Required | Description
--------- | -------- | -----------
user_id   | yes      | integer user id

<aside class="notice">
See the 'Create a User' API for parameter details.
</aside>
<aside class="notice">
See the memberships API for details of the membership parameters provided.
</aside>




## Update a User's Settings

> If the settings are updated successfully

```json
{
  "status": "success"
}
```

### HTTP Request

`PUT https://api.hashtag.be/api/v5/users`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
email     | yes | |
first_name | yes | |
last_name | yes | |
role | no | user or staff | user 
country | no | numeric iso country code |
gender | no | unknown, male, female, other | unknown
birthday | no | 13 digit ms unix timestamp
avatar_id | no | integer id of an image upload

### Access Rights

This endpoint requires an API token in the request header, and is only accessible to the user themselves.




## Delete a User

> If the user is deleted successfully

```json
{
  "status": "success"
}
```

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/users`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
user_id   | yes      | integer user id

### Access Rights

This endpoint requires an API token in the request header, and is only accessible to the user themselves.
