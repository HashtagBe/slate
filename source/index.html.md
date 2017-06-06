---
title: API Reference

toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>
  - <a href='https://github.com/tripit/slate'>Documentation Powered by Slate</a>

includes:
  - network
  - user
  - fixed_interest
  - content
  - widget_type      
  - errors

search: true
---

# Introduction

Welcome to #be API! You can use our API to access information in our system.

# Authentication

\#be uses token-based way to authorize user. You need to get a token by login with user's email and password

\#be expects for the token to be included in all API requests to the server in a header that looks like the following:

`Authorization: I_AM_A_TOKEN`

<aside class="notice">
You must replace <code>I_AM_A_TOKEN</code> with the token you get after user login.
</aside>


## Get A Token
> Authorize successfully

```json
{
  "status": "success",
  "data": {
    "token": "c79df170b8ef4a2a89fc97d908f15ae1"
  }
}
```

> Authorize unsuccessfully

```json
{
  "status": "fail",
  "msg": "Invalid Email Or Password"
}
```

```json
{
  "status": "fail",
  "msg": "param is missing or the value is empty: password"
}
```

### HTTP Request

`POST hostname/api/v4/login`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
email* |  |
password*|  |
