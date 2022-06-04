# swagger api
https://demo.crudapi.cn/swagger-ui.html

# user
superadmin/1234567890

# login
## option 1: Cookie

### api
```
POST https://demo.crudapi.cn/api/auth/login
accept: application/json
content-type: application/x-www-form-urlencoded
username: superadmin
password: 1234567890
```

## option 2: Jwt token
### api
```
POST https://demo.crudapi.cn/api/auth/jwt/login
accept: application/json
content-type: application/x-www-form-urlencoded
username: superadmin
password: 1234567890
```

![jwtLogin](./img/auth/jwtLogin.png)

### get jwt token
get "token" field form response header: Bearer XXXXX

### set jwt token
#### set Bearer Token Type: Bearer XXXXX
Both "Bearer XXXXX" and "XXXX" is valid
![jwtAuth](./img/auth/jwtAuth.png)

#### View Authorization
"Authorization" field of request header: Bearer XXXXX
![jwtAuthorization](./img/auth/jwtAuthorization.png)

## option 3: Basic Auth

### set Basic auth
#### set Basic Auth Type: superadmin/1234567890
![basicAuth](./img/auth/basicAuth.png)

#### View Authorization
"Authorization" field of request header: Basic c3VwZXJhZG1pbjoxMjM0NTY3ODkw
![basicAuthorization](./img/auth/basicAuthorization.png)



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

# curl example
get sequence by id
```bash
curl -u 'superadmin:1234567890' -X GET -H 'Content-Type: application/json' 'https://demo.crudapi.cn/api/metadata/sequences/1'
curl -H 'Authorization:Basic c3VwZXJhZG1pbjoxMjM0NTY3ODkw' -X GET -H 'Content-Type: application/json' 'https://demo.crudapi.cn/api/metadata/sequences/1'
```

create sequence
```bash
curl -u 'superadmin:1234567890' -X POST -H 'Content-Type: application/json' -d '{"currentTime":false,"sequenceType":"STRING","minValue":1,"maxValue":999999999,"nextValue":1,"incrementBy":1,"name":"orderCode","caption":"订单流水号","format":"SO_%9d"}' 'https://demo.crudapi.cn/api/metadata/sequences'
```

import excel data
```bash
curl -u 'superadmin:1234567890' -F "file=@product.xlsx" "https://demo.crudapi.cn/api/business/product/import"
```
