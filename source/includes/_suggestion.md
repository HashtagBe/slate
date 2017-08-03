# Suggestion

## Get Suggestion List

> The API returns JSON structured like this:

```json
{
    "status": "success",
    "data": {
        "count": 1,
        "suggestion": [
            {
                "creator_full_name": "abc abc",
                "creator_id": 980,
                "creator_image": "/development/user/image/980/atpf324",
                "network_id": [
                    82
                ],
                "creators_professional_level": "unknown",
                "interest_ids": [
                    "6d0b7646-7907-4943-bd4e-73b874d2d981",
                    "5fe0ea3a-9e3e-465b-ae4a-36fb8959f460"
                ],
                "widget_id": 25577,
                "widget_name": "web",
                "source": "manual_input",
                "state": "online",
                "custom_targeted": false,
                "widget_type_id": 5,
                "content_languages": [
                    "en",
                    "it",
                    "zh-CN"
                ],
                "title": "#benetwork - #be | the digital me",
                "abstract": "Your content is intelligently selected and targeted to each user according to their individual digital profile: saving them time on ineffective searches and frustration in not finding what interests them, and creating a truly dynamic digital experience. To system administrators, it offers effective and flexible campaign and reporting tools, making management a breeze.",
                "url": "http://hashtag.be/benetwork/",
                "website_url": "http://hashtag.be",
                "image_width": 800,
                "image_height": 610,
                "domain": "hashtag.be",
                "image_url": "/development/content/image/25577/universities_overlay",
                "snippet": "Your content is intelligently selected and targeted to each user according to their individual digital profile: saving them time on ineffective searches and frustration in not finding what interests them,...",
                "nviews": 0,
                "nimpressions": 0,
                "ndeletes": 0,
                "online_datetime": 1490602041000,
                "created_at": 1490602040000,
                "expires": 4654474284201,
                "creation_datetime": 1490602040000,
                "timeliness": "day",
                "tracking_code": "default",
                "published_after_i_joined": true,
                "fixed_interest_names": [
                    "Fixed7",
                    "Fixed8"
                ],
                "type": "content"
            }
          ]
        }
      }
```

This api retrieves a list of suggestion(content or fixed_interest)

### HTTP Request

`GET hostname/api/v4/suggestions`

### Parameters

Parameter  | Default                             | Description
---------- | ----------------------------------- | -----------
network_id | required                            | integer
amount     | retrieve all suggestions if not set | integer

## Approve a Suggestion

> The API returns JSON structured like this:

```json
{
    "status": "success"
}
```

This api accept a content or fixed_interest to network

### HTTP Request

`PUT hostname/api/v4/suggestions/approve`

### Parameters

Parameter     | Default                      | Description
------------- | ---------------------------- | -----------
network_id    | required                     | integer
suggestion_id | content or fixed_interest id | integer
type          | content or fixed_interest    | string

## Reject a Suggestion

> The API returns JSON structured like this:

```json
{
    "status": "success"
}
```

This api reject a content or fixed_interest to network

### HTTP Request

`PUT hostname/api/v4/suggestions/reject`

### Parameters

Parameter     | Default                      | Description
------------- | ---------------------------- | -----------
network_id    | required                     | integer
suggestion_id | content or fixed_interest id | integer
type          | content or fixed_interest    | string
