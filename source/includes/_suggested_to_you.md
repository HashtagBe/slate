# Suggested to You

Endpoints for network managers and trusted contributors to selectively allow interests and content into their network.

The approve and reject endpoints return the next suggestion, thus the get_next endpoint is only required on the first suggestion fetched.


## Get Next Suggestion

Responses contain the json of either a content or an interest. The fields will be identical to those returned from the network interests and content endpoints.

> Request for the next suggestion succeeded

```json
{
  "status": "success",
  "data": {
    "nsuggestions_remaining": 10,
    "next_suggestion": {
      ...     
    }
  }
}
```

> Request for the next suggestion failed

```json
{
  "status": "fail",
  "data": {
    "failure_message": "",
    "nsuggestions_remaining": 10,
    "next_suggestion": {
      ...     
    }
  }
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/suggested_to_you/get_next`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
network_id | yes | |
user_id    | yes | |



### Access Rights

This endpoint requires an API token in the request header.





## Approve or Reject a Suggestion

> Approval or rejection succeeded

```json
{
    "status": "success",
    "data": {
        "nsuggestions_remaining": 10,
        "next_suggestion": {
          ...  
        }
    }
}
```

> Approval or rejection failed

```json
{
  "status": "fail",
  "message": "...",
  "data": {
    "failure_message": "", 
    "nsuggestions_remaining": 10,
    "next_suggestion": {
      ...      
    }
  }
}
```

### HTTP Request

`PUT https://api.hashtag.be/api/v5/suggested_to_you/reject`

`PUT https://api.hashtag.be/api/v5/suggested_to_you/approve`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
suggestion_id | yes | id of suggestion being judged
network_id | yes |
user_id | yes |
type | yes | Content and NetworkInterest |
only | no | network_interests, content or all, default is all

### Access Rights

This endpoint requires an API token in the request header.
