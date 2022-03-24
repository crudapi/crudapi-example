# Second development demo

## Language
[中文](README_CN.md)

## GIT URL
Name | Type | License | GitHub| Gitee
--- | --- | --- | --- | ---
crudapi-admin-web | Vue Qusar Code | Open Source | [crudapi-admin-web](https://github.com/crudapi/crudapi-admin-web) | [crudapi-admin-web](https://gitee.com/crudapi/crudapi-admin-web)
crudapi-example| Java SDK | Free | [crudapi-example](https://github.com/crudapi/crudapi-example) | [crudapi-example](https://gitee.com/crudapi/crudapi-example)
crudapi-pro-example | Java Pro SDK  | Bussiness | [crudapi-pro-example](https://github.com/crudapi/crudapi-pro-example) | [crudapi-pro-example](https://gitee.com/crudapi/crudapi-pro-example)

### download and install crudapi jar
```bash
cd lib
./download.sh
```

## Mysql

### Import database to crudapi
./database/mysql/crudapi-mysql.sql

### Config MySql properties
src/main/resources/application.properties
```bash
spring.datasource.driverClassName=com.mysql.cj.jdbc.Driver
spring.datasource.url=jdbc:mysql://localhost:3306/crudapi?serverTimezone=Asia/Shanghai&useUnicode=true&characterEncoding=utf8&useSSL=false&allowPublicKeyRetrieval=true
spring.datasource.username=root
spring.datasource.password=root
```

## Postgresql
### Import database to crudapi.public

./database/postgresql/crudapi-pgsql.sql

### Config Postgresql properties
src/main/resources/application.properties
```bash
spring.datasource.driverClassName=org.postgresql.Driver
spring.datasource.url=jdbc:postgresql://localhost:5432/crudapi
spring.datasource.username=postgres
spring.datasource.password=postgres
```

### Build
```bash
mvn clean install -Dmaven.test.skip=true
```

### Run
```bash
java -jar ./target/crudapi-example-1.4.0.jar
```

### Swagger
[http://127.0.0.1:8888/swagger-ui.html](http://127.0.0.1:8888/swagger-ui.html)

### Crudapi Admin Web
[http://127.0.0.1:8888/crudapi/](http://127.0.0.1:8888/crudapi/)
User and password
```
superadmin
1234567890
```

### Crudapi Admin Web (developer)
#### GitHub repo
[https://github.com/crudapi/crudapi-admin-web](https://github.com/crudapi/crudapi-admin-web)

#### Gitee repo
[https://gitee.com/crudapi/crudapi-admin-web](https://gitee.com/crudapi/crudapi-admin-web)

#### Config
update file quasar.conf.js, set devServer->proxy->target
quasar.conf.js
```javascript
devServer: {
  https: false,
  port: 8080,
  open: true,
  proxy: {
    "/api/*": {
      target: "http://127.0.0.1:8888",
      changeOrigin: true
    }
  }
}
```

## Demo
Demo url：[https://demo.crudapi.cn/crudapi/](https://demo.crudapi.cn/crudapi/)

![table](./img/table.png)
Metadata table

![table](./img/relation.png)
Table relation

![customer](./img/customer.png)
Bussiness Data

## Contact
#### Email
admin@crudapi.cn

#### QQ
1440737304

#### Weixin
undefinedneqnull

<div align="left">
  <img width = "200" src="./img/crudapiweixin.jpeg">
</div>

#### WeixinQun
<div align="left">
  <img width = "200" src="./img/weixinqun.png">
</div>

If you have any questions, please contact us!

