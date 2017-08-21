# Contents

## Get Contents List

> The API returns JSON structured like this:

```json
{
  "status": "success",
  "data": [
    {
      "id": XXX,
      "title": "Bing",
      "subtitle": null,
      "authors": "",
      "abstract": "Bing helps you turn information into action, making it faster and easier to go from searching to doing.",
      "state": "ready",
      "source": "manual_input",
      "content_languages": [
        "en"
      ],
      "url": "http://www.bing.com/",
      "video_url": null,
      "flipsnack_url": null,
      "website_url": "http://www.bing.com",
      "free_tags": null,
      "event_end": null,
      "event_start": null,
      "event_datetime": null,
      "publish_datetime": null,
      "online_datetime": null,
      "venue": null,
      "price": null,
      "created_at": "2017-06-07T09:10:29.000Z",
      "updated_at": "2017-06-07T09:10:29.000Z",
      "organizer": null,
      "user_id": 1,
      "network_id": null,
      "network_source_id": null,
      "timeliness": "month",
      "image_width": null,
      "image_height": null,
      "coupon_code": null,
      "creators_comment": null,
      "reward_url": null,
      "expires_at": "2017-07-07T09:10:29.000Z",
      "nclaimed": 0,
      "nstock": null,
      "targeted_user_ids": null,
      "targeted_roles": null,
      "is_challenge_reward": true,
      "attachment_content_type": null,
      "attachment_file_size_bytes": null,
      "widget_type": "article"
    },
    {...}
  ]
}
```

This endpoint retrieves all contents.

### HTTP Request

`GET hostname/api/v4/contents.json`

### Query Parameters

Parameter | Default | Description
--------- | ------- | ---------------------
offset    | 0       |
limit     | 20      | valid range is 1..150

## Get a Specific Content

> Set detail to true and get full version

```json
{
  "status": "success",
  "data": {
    "id": XXX,
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

`GET hostname/api/v4/contents/<id>.json`

### URL Parameters

Parameter | Description
--------- | ------------------------------
id *      | The id of the user to retrieve
detail    | Default value: false

## Extract Content

> extract result show as below(do not save)

```json
{
  "status": "success",
  "data": {
    "id": null,
    "title": "Bing",
    "subtitle": null,
    "authors": "",
    "abstract": "Bing helps you turn information into action, making it faster and easier to go from searching to doing.",
    "state": "ready",
    "source": "manual_input",
    "content_languages": [
      "en"
    ],
    "url": "http://www.bing.com/",
    "video_url": null,
    "flipsnack_url": null,
    "website_url": "http://www.bing.com",
    "free_tags": null,
    "event_end": null,
    "event_start": null,
    "event_datetime": null,
    "publish_datetime": null,
    "online_datetime": null,
    "venue": null,
    "price": null,
    "created_at": null,
    "updated_at": null,
    "organizer": null,
    "user_id": null,
    "network_id": null,
    "network_source_id": null,
    "timeliness": "month",
    "image_width": null,
    "image_height": null,
    "coupon_code": null,
    "creators_comment": null,
    "reward_url": null,
    "expires_at": null,
    "nclaimed": 0,
    "nstock": null,
    "targeted_user_ids": null,
    "targeted_roles": null,
    "is_challenge_reward": true,
    "attachment_content_type": null,
    "attachment_file_size_bytes": null,
    "widget_type": "web"
  }
}
```

> Generate suggested interests

```json
{
    "status": "success",
    "data": {
        "id": 5,
        "title": "Kunming - Wikipedia",
        "subtitle": null,
        "authors": "",
        "abstract": "Kunming ( Mand. pronunciation [kʰwə́n.mǐŋ]; Chinese: 昆明; pinyin: ) is the capital of and largest city in Yunnan Province, Southwest China. Known as Yunnan-Fu (云南府, Yúnnánfǔ) until the 1920s, today it is a prefecture-level city and the political, economic, communications and cultural centre of the province as well as the seat of the provincial government.",
        "state": "ready",
        "source": "manual_input",
        "content_languages": [
            "en"
        ],
        "url": "https://en.wikipedia.org/wiki/Kunming",
        "video_url": null,
        "flipsnack_url": null,
        "website_url": "https://en.wikipedia.org",
        "free_tags": null,
        "event_end": null,
        "event_start": null,
        "event_datetime": null,
        "publish_datetime": null,
        "online_datetime": null,
        "venue": null,
        "price": null,
        "created_at": "2017-06-15T08:21:23.160Z",
        "updated_at": "2017-06-15T08:21:23.160Z",
        "organizer": null,
        "user_id": 1,
        "network_id": null,
        "network_source_id": null,
        "timeliness": "month",
        "image_width": 280,
        "image_height": 389,
        "coupon_code": null,
        "creators_comment": null,
        "reward_url": null,
        "expires_at": "2017-07-15T08:21:23.157Z",
        "nclaimed": 0,
        "nstock": null,
        "targeted_user_ids": null,
        "targeted_roles": null,
        "is_challenge_reward": true,
        "attachment_content_type": null,
        "attachment_file_size_bytes": null,
        "image_url": {
            "url": "/XXX/content/image/5/Kunming_montage",
        },
        "fixed_interests": [
            "Kunming",
            "city"
        ]
    }
}
```

This endpoint extract content with url provided

### HTTP Request

`GET hostname/api/v4/extract.json`

### Parameters

Parameter             | Default | Description
--------------------- | ------- | -------------------------------------
url *                 |         | extract url
save_flag             | false   | save the extracted content when true
suggest_interest_flag | false   | generate suggested interest when true

### Validation Rules

Parameter | Rules
--------- | --------
_url_     | Presence

## Extract url via embedly

> Test with <https://www.youtube.com/watch?v=rmeGVhhbGrM>

```json
{
    "status": "success",
    "data": {
        "table": {
            "provider_url": "https://www.youtube.com/",
            "description": "Follow your passion and everything will fall into place. It is okay to not have a plan. Listen to Mithila as she tells how life happens to you when you are busy planning other things. Mithila Palkar is a popular singer of Hindi and regional languages and an actor.",
            "embeds": [],
            "safe": true,
            "provider_display": "www.youtube.com",
            "related": [],
            "favicon_url": "https://s.ytimg.com/yts/img/favicon-vflz7uhzw.ico",
            "authors": [
                {
                    "url": "https://www.youtube.com/user/TEDxTalks",
                    "name": "TEDx Talks"
                }
            ],
            "images": [
                {
                    "caption": null,
                    "url": "https://i.ytimg.com/vi/rmeGVhhbGrM/hqdefault.jpg",
                    "height": 360,
                    "width": 480,
                    "colors": [
                        {
                            "color": [
                                25,
                                12,
                                21
                            ],
                            "weight": 0.8610839844
                        },
                        {
                            "color": [
                                234,
                                28,
                                58
                            ],
                            "weight": 0.0358886719
                        },
                        {
                            "color": [
                                150,
                                10,
                                29
                            ],
                            "weight": 0.025146484400000002
                        },
                        {
                            "color": [
                                171,
                                127,
                                102
                            ],
                            "weight": 0.017578125
                        },
                        {
                            "color": [
                                139,
                                91,
                                69
                            ],
                            "weight": 0.017333984400000002
                        }
                    ],
                    "entropy": 4.54953675172,
                    "size": 9858
                }
            ],
            "cache_age": 19742,
            "language": "en",
            "app_links": [
                {
                    "url": "vnd.youtube://www.youtube.com/watch?v=rmeGVhhbGrM&feature=applinks",
                    "type": "ios",
                    "namespace": "ai",
                    "app_store_id": "544007664",
                    "app_name": "YouTube"
                },
                {
                    "url": "vnd.youtube://www.youtube.com/watch?v=rmeGVhhbGrM&feature=applinks",
                    "type": "android",
                    "namespace": "ai",
                    "app_name": "YouTube",
                    "package": "com.google.android.youtube"
                },
                {
                    "url": "https://www.youtube.com/watch?v=rmeGVhhbGrM&feature=applinks",
                    "type": "web",
                    "namespace": "ai"
                },
                {
                    "url": "vnd.youtube://www.youtube.com/watch?v=rmeGVhhbGrM&feature=applinks",
                    "namespace": "twitter",
                    "type": "ipad",
                    "name": "YouTube",
                    "id": "544007664"
                },
                {
                    "url": "vnd.youtube://www.youtube.com/watch?v=rmeGVhhbGrM&feature=applinks",
                    "namespace": "twitter",
                    "type": "iphone",
                    "name": "YouTube",
                    "id": "544007664"
                },
                {
                    "url": "https://www.youtube.com/watch?v=rmeGVhhbGrM",
                    "namespace": "twitter",
                    "type": "googleplay",
                    "name": "YouTube",
                    "id": "com.google.android.youtube"
                },
                {
                    "path": "http/www.youtube.com/watch?v=rmeGVhhbGrM",
                    "package": "com.google.android.youtube",
                    "namespace": "google",
                    "type": "android"
                },
                {
                    "path": "vnd.youtube/www.youtube.com/watch?v=rmeGVhhbGrM",
                    "package": "544007664",
                    "namespace": "google",
                    "type": "ios"
                }
            ],
            "original_url": "https://www.youtube.com/watch?v=rmeGVhhbGrM",
            "url": "https://www.youtube.com/watch?v=rmeGVhhbGrM",
            "media": {
                "table": {
                    "duration": 738,
                    "width": 854,
                    "html": "<iframe class=\"embedly-embed\" src=\"//cdn.embedly.com/widgets/media.html?src=https%3A%2F%2Fwww.youtube.com%2Fembed%2FrmeGVhhbGrM%3Ffeature%3Doembed&url=http%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DrmeGVhhbGrMℑ=https%3A%2F%2Fi.ytimg.com%2Fvi%2FrmeGVhhbGrM%2Fhqdefault.jpg&key=7e4d68b3277b47de9fe84fe177882b2b&type=text%2Fhtml&schema=youtube\" width=\"854\" height=\"480\" scrolling=\"no\" frameborder=\"0\" allowfullscreen></iframe>",
                    "type": "video",
                    "height": 480
                }
            },
            "title": "It is Okay not to have a plan | Mithila Palkar | TEDxNITSilchar",
            "offset": null,
            "lead": null,
            "content": null,
            "entities": [],
            "favicon_colors": [
                {
                    "color": [
                        223,
                        40,
                        22
                    ],
                    "weight": 0.052001953100000005
                },
                {
                    "color": [
                        250,
                        248,
                        248
                    ],
                    "weight": 0.0104980469
                }
            ],
            "keywords": [
                {
                    "score": 0,
                    "name": "tedxtalks"
                },
                {
                    "score": 0,
                    "name": "english"
                },
                {
                    "score": 0,
                    "name": "india"
                },
                {
                    "score": 0,
                    "name": "life"
                },
                {
                    "score": 0,
                    "name": "feminism"
                },
                {
                    "score": 0,
                    "name": "passion"
                },
                {
                    "score": 0,
                    "name": "theater"
                }
            ],
            "published": 1498585923000,
            "provider_name": "YouTube",
            "type": "html"
        }
    }
}
```

> else if url is invalid

```json
{
    "status": "fail",
    "msg": 404
}
```

This endpoint extract url via embedly

### HTTP Request

`GET hostname/api/v4/contents/embedly.json`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
url *     |         | string

### Validation Rules

Parameter | Rules
--------- | --------
_url_     | Presence

## Create a Content

> Media Object

```json
[
  {"name":"test.docx", "file": "file_object", "type":"XXX"},
  {"name":"test.jpg", "img": "img_object", "type":"XXX"},
  {
    "name":"Chinese vendors 'exploiting' African children removed from Taobao",
    "url": "http://www.bbc.com/news/world-asia-china-40958209",
    "domain":"bbc.com",
    "abstract": "Customers could pay for ads..."
  }
]
```

> If content is created successfully, response content back

```json
{
    "status": "success",
    "data": {
        "id": 1,
        "title": "Lions are the coolest!!",
        "abstract": "I’ve been thinking about it and lions are definitely the coolest 80s animals. I suspect they even play the saxophone when people have gone to sleep.",
        "state": "published",
        "source": "manual_input",
        "content_languages": [
            "en"
        ],
        "user_id": 944,
        "media": [
            {
                "name": "word-document.docx",
                "type": "mime-typeXXX",
                "file_url": "https://s3.eu-central-1.amazonaws.com/hashtagbe.uploads/staging/content_medium/file/1/demo"
            },
            {
                "name": "panda.jpg",
                "type": "mime-typeYYY",
                "img_width": 774,
                "img_height": 365,
                "img_url": "https://s3.eu-central-1.amazonaws.com/hashtagbe.uploads/staging/content_medium/image/2/WX20170807-132256"
            },
            {
                "name": "Donald trump is bad?",
                "url": "http://bbc.com/news/trump-at-it-again",
                "domain": "bbc.com",
                "abstract": "I’ve been thinking about it and ...",
                "img_width": 258,
                "img_height": 260,
                "img_url": "https://s3.eu-central-1.amazonaws.com/hashtagbe.uploads/staging/content_medium/image/3/hashtag-mail"
            }
        ],
        "interests": [
            {
                "name": "fish"
            },
            {
                "name": "panda"
            }
        ],
        "widget_type": "announcement"
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

`POST hostname/api/v4/contents.json`

### Common Parameters

Parameter       | Default | Description
--------------- | ------- | -----------------------------
title *         |         | string
widget_type *   |         | string
state *         |         | string
abstract        |         | text
network_ids     |         | array of network_id [1,2,...]
fixed_interests |         | array of fixed_interest name
media[index]    |         | media object

### Validation Rules

Parameter     | Rules
------------- | ---------------------
_title_       | Presence
_widget_type_ | Presence
_state_       | Presence
_media_       | Less than 5 megabytes

### Partial Validation

<aside class="notice">
Just do validation, won't save content if state is set as 'not_saved'
</aside>

### Reward Parameters

Parameter          | Default | Description
------------------ | ------- | ------------------
price *            |         | integer
reward_url *       |         | string
expires_at *       |         | date
nstock             | 0       | integer
is_burnable_reward |         | boolean
coupon_code        |         | a list or one code

### Event Parameters

Parameter     | Default | Description
------------- | ------- | -----------
event_start * |         | date
event_end     |         | date
venue *       |         | string
organizer *   |         | string

<aside class="success">
Available widget type please refer <a href="#get-be-widget-types-list">Get #BE Widget Types List API</a></aside>

## Update a Content

> If content is updated successfully

```json
{
  "status": "success"
}
```

This endpoint update a content

### HTTP Request

`PUT hostname/api/v4/contents/<id>.json`

`PATCH hostname/api/v4/contents/<id>.json`

### Parameters

Parameter         | Default | Description
----------------- | ------- | -----------------------------
id *              |         | string
title *           |         | string
widget_type *     |         | string
abstract          |         | text
timeliness        |         | text
targeted_roles    |         | array
targeted_user_ids |         | array
image             |         | file
attachment        |         | file
fixed_interests   |         | array of fixed_interests name
content_languages |         | array

### Validation Rules

Parameter     | Rules
------------- | ---------------------
_title_       | Presence
_widget_type_ | Presence
_attachment_  | Less than 5 megabytes

<aside class="success">
Available widget type please refer <a href="#get-be-widget-types-list">Get #BE Widget Types List API</a></aside>

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

`DELETE hostname/api/v4/contents/<id>.json`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
id *      |         | string

## Launch content to a specific network

> Launched successfully

```json
{
  "status": "success"
}
```

Content creator can use this endpoint to put a content to a specific network.

### HTTP Request

`GET hostname/api/v4/contents/<id>/launch_to_network.json`

### Parameters

Parameter    | Default | Description
------------ | ------- | -----------
id *         |         | string
network_id * |         | string

## Pick content to a specific network

> Launched successfully

```json
{
  "status": "success"
}
```

This endpoint is for network manager to pick contents to specific network.

### HTTP Request

`GET hostname/api/v4/contents/<id>/pick.json`

### Parameters

Parameter    | Default | Description
------------ | ------- | -----------
id *         |         | string
network_id * |         | string
