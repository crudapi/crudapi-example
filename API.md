# swagger api
https://demo.crudapi.cn/swagger-ui.html

# user
superadmin/1234567890

# login
## option 1: cookie

### api
```
POST https://demo.crudapi.cn/api/auth/login
accept: application/json
content-type: application/x-www-form-urlencoded
username: superadmin
password: 1234567890
```

## option 2: jwt
### api
```
POST https://demo.crudapi.cn/api/auth/jwt/login
accept: application/json
content-type: application/x-www-form-urlencoded
username: superadmin
password: 1234567890
```

### get token
get token field form response header: Bear XXXXX

### set Authorization
set Authorization field for request header: Bear XXXXX

## option 3: Basic auth
set Authorization field for: Basic c3VwZXJhZG1pbjoxMjM0NTY3ODkw

# logout
GET https://demo.crudapi.cn/api/auth/logout

# create user
POST https://demo.crudapi.cn/api/business/user
```
{
    "name": "testuser",
    "username": "testuser",
    "password": "testuser",
    "enabled": true,
    "accountNonExpired": true,
    "accountNonLocked": true,
    "credentialsNonExpired": true,
    "fileId": null,
    "avatar": null,
    "roleLines": [{
        "name": "业务数据角色",
        "role": {
            "id": 20,
            "name": "业务数据角色",
        },
        "roleId": 20
    }]
}
```
