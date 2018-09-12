# The #Be API




## General

Responses from all endpoints are in json and follow the <a href="https://labs.omniti.com/labs/jsend">JSend</a> standard.

Most endpoints follow a standard CRUD pattern. In these cases, with the exception of destroy, the object dealt with is returned in the response unless otherwise specified below.

> Successful response from create, read, and update requests

```json
{
    "status": "success",
    "data": {
        ... object fields ...
     }
}
```

> Successful response from a delete requests

```json
{
    "status": "success"
}
```

> Example failed response

```json
{
    "status": "fail",
    "data": {
        "email": "email is invalid",
        "count": ["cannot be negative", "must be an integer"]
     }
}
```

> Example error response

```json
{
    "status": "error",
    "message": "this api route does not exist"
}
```




## Log in

> Successful authentication

```json
{
  "status": "success",
  "data": {
    "user": {
      ... user settings ...
    }  
  }
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
email | yes
password | yes

### Access Rights

This is a public endpoint accessible to all. It does not require an API token in the request header.




## Password Reset

> Password successfully reset

```json
{
  "status": "success"
}
```

### HTTP Request

`PUT https://api.hashtag.be/api/v5/login/reset_password`

### Parameters

Parameter | Required
--------- | --------
new_password | yes
new_password_confirmation | yes

### Access Rights

This is only accessible to the user who is resetting their password. It requires an API token in the request header. Note this is not available to users who log in with Facebook, Campusparty or Medikey.




## Send Forgot Password Email

> Email sent

```json
{
  "status": "success"
}
```

### HTTP Request

`POST https://api.hashtag.be/api/v5/login/send_forgot_password_email`

### Parameters

Parameter | Required 
--------- | -------- 
email | yes 
network_id | yes
new_password_confirmation | yes

### Access Rights

Note this is not available to users who log in with Facebook, Campusparty or Medikey.




## Password Reset via Email

> Password successfully reset

```json
{
  "status": "success"
}
```

### HTTP Request

`PUT https://api.hashtag.be/api/v5/login/reset_password_via_email`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
new_password_hash | yes | this is the parameter given in the link provided to the user their email
new_password | yes |
new_password_confirmation | yes |

### Access Rights

Note this is not available to users who log in with Facebook, Campusparty or Medikey.





post 'login/send_forgot_password_email', to: 'users#send_forgot_password_email'
      post 'login/reset_password_via_email', to: 'user#reset_password_via_email'


