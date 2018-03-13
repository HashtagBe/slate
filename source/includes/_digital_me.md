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
interest_ids | no | comma separated integers

### Access Rights

This endpoint requires an API token in the request header.









## Connecting Strava, Fitbit, Under Armour, and Garmin

### HTTP Request

`POST https://api.hashtag.be/api/v5/digital_me/connect/strava`

`POST https://api.hashtag.be/api/v5/digital_me/connect/fitbit`

`POST https://api.hashtag.be/api/v5/digital_me/connect/under_armour`

`POST https://api.hashtag.be/api/v5/digital_me/connect/garmin`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------

### Access Rights

This endpoint requires an API token in the request header.




## Fetching data from Strava, Fitbit, and Under Armour

### HTTP Request

`POST https://api.hashtag.be/api/v5/digital_me/fetch/strava`

`POST https://api.hashtag.be/api/v5/digital_me/fetch/fitbit`

`POST https://api.hashtag.be/api/v5/digital_me/fetch/under_armour`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------

### Access Rights

This endpoint requires an API token in the request header.


