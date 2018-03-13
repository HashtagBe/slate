# Content Creation from RSS


## Create an RSS Reader

### HTTP Request

`POST https://api.hashtag.be/api/v5/content/rss_feed`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
network_id | yes | |
fetch_time_unit | no | | one_day
every | no | | 1
nmax_per_fetch | no | |
publish_automatically | no | true or false | true
enabled | no | true or false | true
fetch_images | no | true or false | true
timeliness | no | evergreen, month, week, or day | | week

### Access Rights

This endpoint requires an API token in the request header.





## Read RSS Reader Settings

### HTTP Request

`GET https://api.hashtag.be/api/v5/content/rss_feed`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
rss_feed_id | yes | integer rss feed id

### Access Rights

This endpoint requires an API token in the request header.




## Update RSS Reader Settings

### HTTP Request

`PUT https://api.hashtag.be/api/v5/content/rss_feed`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
rss_feed_id | yes | integer rss reader id |
fetch_time_unit | no | one_hour or one_day |
every | no | |
nmax_per_fetch | no | | 
publish_automatically | no | true or false |
enabled | no | true or false | 
fetch_images | no | true or false | 
timeliness | no | evergreen, month, week, or day | 

### Access Rights

This endpoint requires an API token in the request header.




## Delete RSS Reader

This also deletes all content created from this RSS feed.

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/content/rss_feed`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
rss_feed_id | yes | integer rss feed id

### Access Rights

This endpoint requires an API token in the request header.
