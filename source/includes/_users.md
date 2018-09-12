# Users

## Create a User

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
want_be_emails | no | boolean | true
avatar_id | no | integer id of an image upload

### Access Rights

This is a public endpoint accessible to all. It does not require an API token in the request header.

<aside class="notice">
Numeric ISO 3166 country codes are listed <a href= "https://en.wikipedia.org/wiki/ISO_3166-1">here</a>.
</aside>




## [Not completed] Create a User using Facebook OAuth2

### HTTP Request

`POST https://api.hashtag.be/api/v5/users/facebook`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------

### Access Rights

This is a public endpoint accessible to all. It does not require an API token in the request header.




## [Not completed] Create a User using a MediKey Account

### HTTP Request

`POST https://api.hashtag.be/api/v5/users/medikey`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------

### Access Rights

This is a public endpoint accessible to all. It does not require an API token in the request header.





## Read a User's Settings

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

### HTTP Request

`PUT https://api.hashtag.be/api/v5/users`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
user_id | yes | integer user id
first_name | yes | |
last_name | yes | |
role | no | user or staff | user 
country | no | numeric iso country code |
gender | no | unknown, male, female, other | unknown
birthday | no | 13 digit ms unix timestamp

### Access Rights

This endpoint requires an API token in the request header, and is only accessible to the user themselves.




## Delete a User

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/users`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
user_id   | yes      | integer user id

### Access Rights

This endpoint requires an API token in the request header, and is only accessible to the user themselves.
