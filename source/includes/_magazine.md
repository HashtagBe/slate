# Magazine 3.0

## Retrieving a Magazine Edition




> Magazine successfully retrieved

```json
{
    "status": "success",
    "data": {
        "created_at": 1518057588000,
        "edition": 1.3,
        "sections": [
            {
                "type": "",
                "title": "",
                "network_interest_ids": [ 1, 2, 3 ].
                "rows": [
                    {
                        "row_type": "1a",
                        "content": [
                            {
                                "layout_type": "two_thirds",
                                "content_id": 12
                            },
                            {
                                "layout_type": "one_third",
                                "content_id": 41
                            }
                        ]
                    },
                    {
                        "row_type": "2a",
                        "content": [
                            {
                                "layout_type": "one_third",
                                "content_id": 2
                            },
                            {
                                "layout_type": "one_third",
                                "content_id": 4
                            },
                            {
                                "layout_type": "one_third",
                                "content_id": 2
                            }
                        ]
                    }
                ]
            }
        ],
        "content": [
            {
                "creator_id": 1,
                "creator_full_name": "TestTester",
                "widget_id": 1,
                "widget_name": "unknown",
                "timeliness": "evergreen",
                "source": "manual_input",
                "targeting_type": null,
                "targeted_user_ids": [],
                "widget_type_id": 2,
                "content_language": "content_language",
                "title": "title",
                "body": "body",
                "url": "url",
                "website_url": "website_url",
                "venue": "venue",
                "organizer": "organizer",
                "snippet": "announcement text"
            },
            ... further content ...
        ],
        "network_interests": [
            {
                "network_interest_id": 1,
                "name": "interest0",
                "language": "en",
                "state": "suggested",
                "network_id": 1,
                "interest_ids": [
                   1
                ],
                "interest_type": "manually_created",
                "created_at": 1518151956888
            },
            ... further network interests ...
        ],
        "network_interest_scores": [
            0.22988685846306622,
            0.5913099669071359,
            0
        ],
        "compute_time_ms": 123.894
    }
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/magazine`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
user_id | yes | |
network_id | yes | |
edition | no | string | most recent
from | no | starting section number | 0
nsections | no | | 6

### Access Rights

This endpoint requires an API token in the request header.
