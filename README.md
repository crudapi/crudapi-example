# Second development demo

### LICENSE
[LICENSE](./LICENSE)

## Language
[中文](README_CN.md)

## GIT URL
Name | Type | License | GitHub| Gitee
--- | --- | --- | --- | ---
crudapi-admin-web | Vue Qusar Code | Open Source | [crudapi-admin-web](https://github.com/crudapi/crudapi-admin-web) | [crudapi-admin-web](https://gitee.com/crudapi/crudapi-admin-web)
crudapi-example| Java SDK | Free Forever | [crudapi-example](https://github.com/crudapi/crudapi-example) | [crudapi-example](https://gitee.com/crudapi/crudapi-example)

## Mysql

### Create database schema crudapi

### Config MySql properties
src/main/resources/application.properties
```bash
spring.datasource.driverClassName=com.mysql.cj.jdbc.Driver
spring.datasource.url=jdbc:mysql://localhost:3306/crudapi?serverTimezone=Asia/Shanghai&useUnicode=true&characterEncoding=utf8&useSSL=false&allowPublicKeyRetrieval=true
spring.datasource.username=root
spring.datasource.password=root

#auto create table by flyway
spring.flyway.locations=classpath:cn/crudapi/core/db/migration/mysql
```

## Postgresql
### Create database schema crudapi.public

### Config Postgresql properties
src/main/resources/application.properties
```bash
spring.datasource.driverClassName=org.postgresql.Driver
spring.datasource.url=jdbc:postgresql://localhost:5432/crudapi
spring.datasource.username=postgres
spring.datasource.password=postgres

#auto create table by flyway
spring.flyway.locations=classpath:cn/crudapi/core/db/migration/postsql
```

## Oracle
### Create database schema XEPDB1.crudapi

### Config Postgresql properties
src/main/resources/application.properties
```bash
spring.datasource.url=jdbc:oracle:thin:@//localhost:1521/XEPDB1
spring.datasource.driverClassName=oracle.jdbc.OracleDriver
spring.datasource.username=crudapi
spring.datasource.password=crudapi
spring.datasource.initialization-mode=always
spring.datasource.schema=classpath:schema.sql

#auto create table by flyway
spring.flyway.locations=classpath:cn/crudapi/core/db/migration/oracle
```

## MS SQL Server
### Create database schema crudapi.dbo

### Config Postgresql properties
src/main/resources/application.properties
```bash
spring.datasource.url=jdbc:sqlserver://localhost:1433;SelectMethod=cursor;DatabaseName=crudapi
spring.datasource.driverClassName=com.microsoft.sqlserver.jdbc.SQLServerDriver
spring.datasource.username=sa
spring.datasource.password=Mssql1433

#auto create table by flyway
spring.flyway.locations=classpath:cn/crudapi/core/db/migration/mssql
```


### download and install dependency package
```bash
cd lib
./download.sh
```

### Build
```bash
cd crudapi-example
mvn clean install -Dmaven.test.skip=true

#aliyun mirror
mvn clean install -Dmaven.test.skip=true -s settings.xml
```

### Run
```bash
cd crudapi-example
java -jar ./target/crudapi-example-1.6.2.jar
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

### API (developer)
[API](./API.md)

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

#### QQQun
632034576

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

