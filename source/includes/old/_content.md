# Contents

## Get Contents List

> The API returns JSON structured like this:

```json
{
    "status": "success",
    "data": [
        {
            "id": 1,
            "title": "Clinical and molecular response to interferon-α therapy in essential thrombocythemia patients with CALR mutations",
            "abstract": "Myeloproliferative neoplasms are clonal disorders characterized by the presence of \r\nseveral gene mutations associated with particular hematologic parameters, clinical \r\nevolution, and prognosis. Few therapeutic options are available, among which interferon \r\nα (IFNα) presents interesting properties like the ability to induce hematologic responses \r\n(HRs) and molecular responses (MRs) in patients with JAK2 mutation.",
            "state": "online",
            "source": "manual_input",
            "content_languages": [
                "en"
            ],
            "user_id": null,
            "interests": [
                {
                    "name": "Thrombocytopenia"
                },
                {
                    "name": "Oncohematology"
                },
                {
                    "name": "Myelodisplastic syndromes"
                },
                {
                    "name": "Myeloproliferative neoplasms"
                }
            ],
            "widget_type": "web"
        },
        {
            "id": 2,
            "title": "TfR2 links iron metabolism and erythropoiesis",
            "abstract": "In this issue of Blood, Nai et al establish a function of transferrin receptor 2 (TfR2) as a \r\nnegative regulator of erythropoiesis. Nai et al show that mice lacking bone marrow TfR2 \r\nexhibit erythrocytosis and enhanced sensitivity to erythropoietin (Epo). Moreover, their \r\nerythroid cell maturation resembles that of iron-deficient wild-type mice.",
            "state": "online",
            "source": "manual_input",
            "content_languages": [
                "en"
            ],
            "user_id": null,
            "interests": [
                {
                    "name": "Erythropoiesis"
                },
                {
                    "name": "Iron metabolism"
                },
                {
                    "name": "Erythrocytosis"
                },
                {
                    "name": "Bone marrow"
                }
            ],
            "widget_type": "web"
        }
        ]}
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

> Data format

```json
{
    "status": "success",
    "data": [
        {
            "creator_full_name": "abc abc",
            "creator_id": 980,
            "creator_image": "/development/user/image/980/atpf324",
            "network_ids": [
                1
            ],
            "suggested_network_ids": [],
            "approved_network_ids": [
                1
            ],
            "rejected_network_ids": [],
            "interests": [
                {
                    "name": "nice",
                    "interest_id": "90c4b7bf-6f0b-4ad1-b40b-3f7f9d5c9eac"
                },
                {
                    "name": "right",
                    "interest_id": "979f8335-0955-4b6b-96f3-4775144b026f"
                }
            ],
            "widget_id": 26285,
            "widget_name": "post",
            "source": "manual_input",
            "state": "online",
            "custom_targeted": false,
            "widget_type_id": 6,
            "content_languages": [
                "en"
            ],
            "title": "THIS ONE",
            "abstract": "HHAHHA",
            "snippet": "HHAHHA",
            "nviews": 0,
            "nimpressions": 0,
            "ndeletes": 0,
            "expires_at": 4657083127211,
            "created_at": 1503483127910,
            "expires": 4657083127211,
            "creation_datetime": 1503483127910,
            "tracking_code": "default",
            "published_after_i_joined": false,
            "creators_professional_level": "unknown",
            "media": [
                {
                    "name": "demo.html",
                    "type": "text/html"
                },
                {
                    "name": "百度一下，你就知道",
                    "domain": "baidu.com",
                    "abstract": "null"
                },
                {
                    "name": "hashtag-mail.png",
                    "type": "image/png"
                },
                {
                    "name": "WX20170727-064226@2x.png",
                    "type": "image/png"
                }
            ]
        }
    ]
}
```

This endpoint retrieves a specific content.

### HTTP Request

`GET hostname/api/v4/contents/<id>.json`

### URL Parameters

Parameter            | Description
-------------------- | ---------------------------------
id *                 | The id of the content to retrieve
current_network_id * | Current network id

## Extract Content

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

`GET hostname/api/v4/contents/extract.json`

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
  {"name":"test.docx", "file": "file_object", "mime_type":"XXX"},
  {"name":"test.jpg", "image": "img_object", "mime_type":"XXX"},
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
                "widget_type": "mime-typeXXX",
                "file_url": "https://s3.eu-central-1.amazonaws.com/hashtagbe.uploads/staging/content_medium/file/1/demo"
            },
            {
                "name": "panda.jpg",
                "widget_type": "mime-typeYYY",
                "image_width": 774,
                "image_height": 365,
                "image_url": "https://s3.eu-central-1.amazonaws.com/hashtagbe.uploads/staging/content_medium/image/2/WX20170807-132256"
            },
            {
                "name": "Donald trump is bad?",
                "url": "http://bbc.com/news/trump-at-it-again",
                "domain": "bbc.com",
                "abstract": "I’ve been thinking about it and ...",
                "image_width": 258,
                "image_height": 260,
                "image_url": "https://s3.eu-central-1.amazonaws.com/hashtagbe.uploads/staging/content_medium/image/3/hashtag-mail"
            }
        ],
        "interests": [
            {
                "interest_id":"XXXXX",
                "name": "fish"
            },
            {
                "interest_id":"XXXXX",
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

Parameter               | Default | Description
----------------------- | ------- | ---------------------------------------
title *                 |         | string
widget_type_id *        |         | integer
state *                 |         | string
abstract                |         | text
network_ids             |         | like: 1,2,3,4
fixed_interests         |         | fixed_interest names separated by comma
media_attributes[index] |         | media object

### Validation Rules

Parameter        | Rules
---------------- | ---------------------
_title_          | Presence
_widget_type_id_ | Presence
_state_          | Presence
_media_          | Less than 5 megabytes

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

> Update media format

```json
[
  /*delete id 1 media*/
  {"id":1,"_destroy":1},  
  /*edit id 3 media*/
  {
    "id": 3,
    "name":"Chinese vendors...",
    "url": "http://www.bbc.com/news/world-asia-china-40958209",
    "domain":"bbc.com",
    "abstract": "Customers could pay for ads..."
  }
]
```

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

Parameter               | Default | Description
----------------------- | ------- | ----------------------------------------------------
title                   |         | string
widget_type_id          |         | integer
state                   |         | string
abstract                |         | text
network_ids             |         | like: 1,2,3,4
fixed_interests         |         | fixed_interest names separated by comma
media_attributes[index] |         | media object(nothing need to do if no media changed)

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
id *      |         | integer

## Reject a Content

> If content is rejected successfully

```json
{
  "status": "success"
}
```

> else if operator without permission

```json
/*with 403 status code*/
{
    "status": "fail",
    "msg": "Only network_manager or trusted_contributor could do this operation!"
}
```

This endpoint reject a content

### HTTP Request

`PUT hostname/api/v4/contents/<id>.json`

### Parameters

Parameter    | Default | Description
------------ | ------- | -----------
id *         |         | integer
network_id * |         | integer
