# Digital Me




## Read a Digital Me

### HTTP Request

`GET https://api.hashtag.be/api/v5/users/digital_me`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
user_id | yes | integer user id |
network_id | no | integer, filters out interests not in this network |
duration_ms | no | integer | 2 days in ms
nmax_actions | no | integer | 10000
nmax_interests | no | integer, number of interests returned | 1000
sort_by | no | score, energy, power | score

### Access Rights

This endpoint requires an API token in the request header.






## Storing Actions in a Digital Me

### HTTP Request

`PUT https://api.hashtag.be/api/v5/users/digital_me`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
user_id | yes | integer user id
action_type | yes | magazine_visit, click_interest, create_content, click_content, view_content, share_content, save_content
network_id | no | integer
content_id | no | integer
interest_ids | no | array of integers

### Access Rights

This endpoint requires an API token in the request header.





## Getting the Credits Balance

### HTTP Request

`GET https://api.hashtag.be/api/v5/users/wallet/balance`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
user_id | yes | integer user id

### Access Rights

This endpoint requires an API token in the request header.








## Connecting Strava, Fitbit, Under Armour, and Garmin

### HTTP Request

`POST https://api.hashtag.be/api/v5/digital_me/connect/garmin`

There is an example of connecting to Garmin given in the public folder (oauth.html). Connections for the other services are the same as in the old code.

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------

### Access Rights

This endpoint requires an API token in the request header.





## Fetching data from Strava, Fitbit, and Under Armour

### HTTP Request

`POST https://api.hashtag.be/api/v5/digital_me/fetch`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
user_id | yes | |

Note that Garmin is a push system, and data does not need to be covered here

### Access Rights

This endpoint requires an API token in the request header.


