# Authentication

## Log in

> Successful authentication

```json
{
  "status": "success",
  "data": {
    "api_token": "c79df170b8ef4a2a89fc97d908f15ae1"
  }
}
```

> Unsuccessful authentication

```json
{
  "status": "fail",
  "message": "..."
}
```

\#be uses token-based authentication. The token is obtained by logging in with the user's email and password.

Except where specified, \#be expects the token to be included in all API request headers:

`Authorization: API_TOKEN`

### HTTP Request

`POST https://api.hashtag.be/api/v5/login`

### Parameters

Parameter | Required
--------- | --------
email|yes
password|yes

### Access Rights

This is a public endpoint accessible to all. It does not require an API token in the request header.




## Password Reset

> Password successfully reset

```json
{
  "status": "success"
}
```

> Password not reset

```json
{
  "status": "fail",
  "message": "..."
}
```

### HTTP Request

`PUT https://api.hashtag.be/api/v5/reset_password`

### Parameters

Parameter | Required
--------- | --------
new_password|yes
new_password_confirmation|yes

### Access Rights

This is only accessible to the user who is resetting their password. It requires an API token in the request header.
