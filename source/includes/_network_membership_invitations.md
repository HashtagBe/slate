# Network Membership Invitations

## Create a Membership Invitation

### HTTP Request

`POST https://api.hashtag.be/api/v5/networks/memberships/invitations`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
network_id | yes | integer network id |
user_id | yes | integer user id |
role | no | reader, user, trusted_contributor, or network_manager | user
ninvitations | no | integer | 1
state | no | issued, revoked, or accepted | issued

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to users.




## Read Network Membership Invitations

> Network membership invitations

```json
{
    "status": "success",
    "data": {
        "network_membership_invitations": [
            {
                ... fields ...
            },
            {
                ... fields ...
            },
            ...
        ]
    }
}
```

### HTTP Request

`GET https://api.hashtag.be/api/v5/networks/memberships/invitations`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
network_id | no | integer network id

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to the users who are members of the network with role manager.




## Update a Network Membership Invitation

### HTTP Request

`PUT https://api.hashtag.be/api/v5/networks/memberships/invitations`

### Parameters

See POST parameters

### Access Rights

This endpoint requires an API token in the request header.





## Delete a Network Membership Invitation

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/networks/memberships/invitations`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
network_membership_invitation_id | yes | integer  id

### Access Rights

This endpoint requires an API token in the request header.



