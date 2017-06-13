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


## Get suggested Fixed_interest

> The result for given text

>London Listeni/ˈlʌndən/ is the capital and most populous city of England and the United Kingdom.[7][8] Standing on the River Thames in the south east of the island of Great Britain, London has been a major settlement for two millennia. It was founded by the Romans, who named it Londinium.[9] London's ancient core, the City of London, largely retains its 1.12-square-mile (2.9 km2) medieval boundaries. Since at least the 19th century, "London" has also referred to the metropolis around this core, historically split between Middlesex, Essex, Surrey, Kent, and Hertfordshire,[10][11][12] which today largely makes up Greater London,[13][14][note 1] governed by the Mayor of London and the London Assembly.[15][note 2][16]
London is a leading global city[17][18] in the arts, commerce, education, entertainment, fashion, finance, healthcare, media, professional services, research and development, tourism, and transportation.[19][20][21] It is crowned as the world's largest financial centre[22][23][24][25] and has the fifth- or sixth-largest metropolitan area GDP in the world.[note 3][26][27] London is a world cultural capital.[28][29][30] It is the world's most-visited city as measured by international arrivals[31] and has the world's largest city airport system measured by passenger traffic.[32] London is the world's leading investment destination,[33][34][35] hosting more international retailers[36][37] and ultra high-net-worth individuals[38][39] than any other city. London's universities form the largest concentration of higher education institutes in Europe.[40] In 2012, London became the first city to have hosted the modern Summer Olympic Games three times.[41]

```json
{
    "status": "success",
    "data": [
        "London",
        "city",
        "world",
        "note"
    ]
}
```


> If params is missing

```json
{
    "status": "fail",
    "msg": "param is missing or the value is empty: text"
}
```

Extract fixed_interests by given text

### HTTP Request

`POST hostname/api/v4/fixed_interests/suggested.json`

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
text * |  | string
