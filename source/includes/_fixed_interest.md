# Fixed interests
<aside class="warning">Fixed interest can't be deleted</aside>
## Get Fixed_interests List
> The API returns JSON structured like this:

```json
{
  {
    "status": "success",
    "data": [
      {
        "id": 2,
        "name": "Fixed2",
        "language": "en"
      },
      {
        "id": 3,
        "name": "Fixed3",
        "language": "en"
      }
      {......}
    ]
  }
}
```

This endpoint retrieves all fixed_interests.

### HTTP Request

`GET hostname/api/v4/fixed_interests.json`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
offset | 0 |
limit| 20 | valid range is 1..150
network |  | network name | get all fixed_interests of a specific network
undistributed| false | get all fixed_interests without network information


## Get a Specific Fixed_interest

> The API returns JSON structured like this:

```json
{
  {
    "status": "success",
    "data": [
      {
        "id": 2,
        "name": "Fixed2",
        "language": "en"
      }
    ]
  }
}
```

This endpoint retrieves a specific fixed_interest.
### HTTP Request

`GET hostname/api/v4/fixed_interests/<id>.json`

### URL Parameters

Parameter | Description
--------- | -----------
id * | The id of the fixed_interest to retrieve

## Create a Fixed_interest
> If fixed_interest is created successfully

```json
{
  "status": "success"
}
```

> else if network is not exist

```json
{
  "status": "fail",
  "msg": "The Network not exist"
}
```

> else if the fixed_interest exist in the scope of language and network

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

This endpoint create a fixed_interest

### HTTP Request

`POST hostname/api/v4/fixed_interests.json`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
name * |  | string
network |  | create fixed_interest for specific network
icon|  | icon image

### Validation Rules

Parameter |  Rules
--------- |  -----------
*name* | Presence
 | Uniqueness in the scope of language and network
*network* | Exist network name
*icon* | Less than 1 megabyte

## Approve a Fixed_interest

> If a fixed_interest is approved successfully by network manager

```json
{
  "status": "success"
}
```

This endpoint used to approve suggested fixed_interest

### HTTP Request

`PUT hostname/api/v4/fixed_interests/<id>/approve.json`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
id * |  | string
network_id * |  | string

<aside class="success">
The operator must be network manager
</aside>


## Reject a Fixed_interest

> If a fixed_interest is rejected successfully by network manager

```json
{
  "status": "success"
}
```

This endpoint used to reject suggested fixed_interest

### HTTP Request

`PUT hostname/api/v4/fixed_interests/<id>/reject.json`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
id * |  | string
network_id * |  | string

<aside class="success">
The operator must be network manager
</aside>


## Hide a Fixed_interest

> If network manager hide a fixed_interest successfully

```json
{
  "status": "success"
}
```

Fixed_interest can't be deleted, network manager can hide it by this endpoint

### HTTP Request

`PUT hostname/api/v4/fixed_interests/<id>/hide.json`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
id * |  | string
network_id * |  | string

<aside class="success">
The operator must be network manager
</aside>
