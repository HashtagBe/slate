# Networks

## Get All Networks
> The above command returns JSON structured like this:

```json
{
  "status": "success",
  "data": [
    {
      "id": 1,
      "name": "dummy1",
      "full_name": "Dummy1",
      "memberships_count": 4,
      "website": null,
      "access_type": "open",
      "links": {},
      "can_target_by_role": false,
      "can_target_by_user": false,
      "personalize_network_banner": false,
      "can_share_widgets": true,
      "allow_contributor_role": false,
      "color": "#ff9b00",
      "icon": {
        "url": null
      },
      "banner": {
        "url": null
      },
      "background": {
        "url": null
      }
    },
    {
      "id": 2,
      "name": "dummy2",
      "full_name": "Dummy2",
      "memberships_count": 289,
      "website": "http://www.dummy2.it",
      "access_type": "open",
      "links": {},
      "can_target_by_role": false,
      "can_target_by_user": false,
      "personalize_network_banner": false,
      "can_share_widgets": true,
      "allow_contributor_role": false,
      "color": "#c71410",
      "icon": {
        "url": null
      },
      "banner": {
        "url": null
      },
      "background": {
        "url": null
      }
    }]
}

```

This endpoint retrieves all networks.

### HTTP Request

`GET hostname/api/v4/networks.json`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
offset | 0 |
limit| 20 | valid range is 1..150

## Get a Specific Network

> The above command returns JSON structured like this:

```json
{
  "status": "success",
  "data": {
    "id": 1,
    "name": "dummy1",
    "full_name": "Dummy1",
    "memberships_count": 4,
    "website": null,
    "access_type": "open",
    "links": {},
    "can_target_by_role": false,
    "can_target_by_user": false,
    "personalize_network_banner": false,
    "can_share_widgets": true,
    "allow_contributor_role": false,
    "color": "#ff9b00",
    "icon": {
      "url": null
    },
    "banner": {
      "url": null
    },
    "background": {
      "url": null
    }
  }
}
```

This endpoint retrieves a specific network.

### HTTP Request

`GET hostname/api/v4/networks/<id>.json`

### URL Parameters

Parameter | Description
--------- | -----------
id * | The id of the network to retrieve

## Create a Network
> If network is created successfully

```json
{
  "status": "success"
}
```

> else if name|full_name is missing

```json
{
  "status": "fail",
  "msg": "param is missing or the value is empty: full_name"
}
```

> else if name has been taken

```json
{
  "status": "fail",
  "msg": {
    "name": [
      "has already been taken"
    ]
  }
}
```

> else if access_type is not closed or open

```json
{
  "status": "fail",
  "msg": "access_type value is invalid"
}
```

This endpoint create a network

### HTTP Request

`POST hostname/api/v4/networks.json`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
name * |  | string
full_name * |  | string
website  |  | string
access_type  | closed | closed or open
links  |  | Json
can_target_by_role  | false | boolean
can_target_by_user  | false | boolean
personalize_network_banner  | false | boolean
can_share_widgets  | true | boolean
allow_contributor_role  | false | boolean
color  | #000000 | string(valid color code)
icon  |  | file
banner  |  | file
background  |  | file

### Validation Rules

Parameter |  Rules
--------- |  -----------
*name* | Presence
 | Uniqueness
 | Must be a valid twitter hashtag
 | Must be all downcase
 | Must not equal 'admin'
*full_name* | Presence
*website* | Mush match URL format
 | allow_blank
*links* | Mush match URL format
 | allow_blank
*icon* | Mush be image(jpg jpeg gif png)
 | Less than 1 megabyte
*banner* | Mush be image(jpg jpeg gif png)
 | Less than 2 megabytes
*background* | Mush be image(jpg jpeg gif png)
 | Less than 2 megabytes
*color* | Mush be valid color code
  | allow_blank

## Delete a Network

> If network is deleted successfully

```json
{
  "status": "success"
}
```

> else if network is not exist with given id

```json
{
  "status": "fail",
  "msg": "network is not exist"
}
```

This endpoint delete a network

### HTTP Request

`DELETE hostname/api/v4/networks/<id>`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
id * |  | string


## Update a Network

> If network is updated successfully

```json
{
  "status": "success"
}
```

> Other failed cases please refer <a href= "#create-a-network">Create a Network API</a>

This endpoint update a network

### HTTP Request

`PATCH hostname/api/v4/networks/<id>`
`PUT hostname/api/v4/networks/<id>`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
id * |  | string
name * |  | string
full_name * |  | string
website  |  | string
access_type  | closed | closed or open
links  |  | Json
can_target_by_role  | false | boolean
can_target_by_user  | false | boolean
personalize_network_banner  | false | boolean
can_share_widgets  | true | boolean
allow_contributor_role  | false | boolean
color  | #000000 | string(valid color code)
icon  |  | file
banner  |  | file
background  |  | file

<aside class="success">
Note: Referring <a href= "#create-a-network">Create a Network API</a> for validation rules.
</aside>
