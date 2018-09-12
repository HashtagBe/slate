# Content Network Connectors

## Create a Content Network Connector

### HTTP Request

`POST https://api.hashtag.be/api/v5/content/content_network_connectors`

### Parameters

Parameter | Required | Description | Default
--------- | -------- | ----------- | -------
network_id | yes | integer id |
content_id | yes | integer id |
sharer_id | yes | integer id of creator of this connector |
approver_id | no | integer id |
targeting_type | no | to_members, by_role, to_magazine | to_magazine
attributation | no | as_me, as_network | as_me
connection_reason | no | shared, syndicated | shared
targeted_roles | no | user, reader, trusted_contributor, network_manager
targeted_user_ids | no | array of user ids
state | no | suggested, approved, hidden, rejected, deleted  | suggested

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to users.




## Read Content Network Connectors

### HTTP Request

`GET https://api.hashtag.be/api/v5/content/content_network_connectors`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
content_id | no | integer id
content_network_connector_id | no | integer id

One of these parameters must be set.

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to the users who are members of the network with role manager.




## Update a Content Network Connector

### HTTP Request

`PUT https://api.hashtag.be/api/v5/content/content_network_connectors`

### Parameters

Parameter | Required | Description 
--------- | -------- | -----------
content_network_connector_id | yes | integer id
state | no | suggested, approved, hidden, rejected, deleted

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to the users who are members of the network with role manager, and to the member user themselves. Only network managers can change the fields role or professional level, only the user themselves can change want_digest.

State can only be updated by network managers.




## Delete a Content Network Connector

### HTTP Request

`DELETE https://api.hashtag.be/api/v5/content/content_network_connectors`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
content_network_connector_id | yes | integer id

### Access Rights

This endpoint requires an API token in the request header. The endpoint is only accessible to the users who are members of the network with role manager, and to the member user themselves.
