# [Don't test yet] Digital Me




## Storing Data in your Digital Me

> Data successfully stored

```json
{
  "status": "success"
  "credits_earned": 123
}
```

### HTTP Request

`POST https://api.hashtag.be/api/v5/digital_me`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
user_id | yes | integer user id

### Access Rights

This endpoint requires an API token in the request header.




## Recovering the Interest Profile of Your Digital Me

> Successful request for the interest profile

```json
{
    "status": "success",
    "data": {
        "interests": [
          {
            ... interest 0 fields ...
          },
          {
            ... interest 1 fields ...
          },
          ...
        ]
    }
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/digital_me/interest_profile`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
network_id | no | return only interests within this network | all networks
ninterests | no | | all interests 

### Access Rights

This endpoint requires an API token in the request header.




## Connecting Strava, Fitbit, Under Armour, and Garmin

> Successful connection

```json
{
    "status": "success"
}
```

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

> Successful connection

```json
{
    "status": "success"
}
```

### HTTP Request

`POST https://api.hashtag.be/api/v5/digital_me/fetch/strava`

`POST https://api.hashtag.be/api/v5/digital_me/fetch/fitbit`

`POST https://api.hashtag.be/api/v5/digital_me/fetch/under_armour`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------

### Access Rights

This endpoint requires an API token in the request header.

