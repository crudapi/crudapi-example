# crudapi二次开发demo

## 语言
[English](README.md)

## GIT地址
名称 | 类型 | 授权 | GitHub仓库 | Gitee仓库
--- | --- | --- | --- | ---
crudapi-admin-web | Vue Qusar源码 | 开源 | [crudapi-admin-web](https://github.com/crudapi/crudapi-admin-web) | [crudapi-admin-web](https://gitee.com/crudapi/crudapi-admin-web)
crudapi-example| 个人版Java集成SDK | 免费| [crudapi-example](https://github.com/crudapi/crudapi-example) | [crudapi-example](https://gitee.com/crudapi/crudapi-example)
crudapi-pro-example | 商用版Java集成SDK  | 商用 | [crudapi-pro-example](https://github.com/crudapi/crudapi-pro-example) | [crudapi-pro-example](https://gitee.com/crudapi/crudapi-pro-example)

### 下载安装Jar包
```bash
cd lib
./download.sh
```

## Mysql

### 导入数据库
./database/mysql/crudapi-mysql.sql

### 配置数据库信息
src/main/resources/application.properties
```bash
spring.datasource.driverClassName=com.mysql.cj.jdbc.Driver
spring.datasource.url=jdbc:mysql://localhost:3306/crudapi?serverTimezone=Asia/Shanghai&useUnicode=true&characterEncoding=utf8&useSSL=false&allowPublicKeyRetrieval=true
spring.datasource.username=root
spring.datasource.password=root
```

## Postgresql
### 导入数据库
./database/postgresql/crudapi-pgsql.sql

### 配置数据库信息
src/main/resources/application.properties
```bash
spring.datasource.driverClassName=org.postgresql.Driver
spring.datasource.url=jdbc:postgresql://localhost:5432/crudapi
spring.datasource.username=postgres
spring.datasource.password=postgres
```

### 编译
```bash
mvn clean install -Dmaven.test.skip=true
```

### 运行
```bash
java -jar ./target/crudapi-example-1.1.0.jar
```

### swagger文档
[http://127.0.0.1:8888/swagger-ui.html](http://127.0.0.1:8888/swagger-ui.html)

### 用户名和密码
```
superadmin
1234567890
```

### crudapi后台管理WEB
#### GitHub仓库
[https://github.com/crudapi/crudapi-admin-web](https://github.com/crudapi/crudapi-admin-web)

#### Gitee仓库
[https://gitee.com/crudapi/crudapi-admin-web](https://gitee.com/crudapi/crudapi-admin-web)

#### 修改配置
修改quasar.conf.js文件中devServer->proxy->target

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

## 演示
演示地址：[https://demo.crudapi.cn/crudapi/](https://demo.crudapi.cn/crudapi/)

![table](./img/table.png)
表单对应不同的对象

![relation](./img/relation.png)
表关系图显示不同对象之间的关系

![customer](./img/customer.png)
业务数据操作

## 联系方式
#### 邮箱
admin@crudapi.cn

#### QQ
1440737304

#### 微信
undefinedneqnull

<div align="left">
  <img width = "200" src="./img/crudapiweixin.jpeg">
</div>

#### 微信群
<div align="left">
  <img width = "200" src="./img/weixinqun.png">
</div>

如有任何问题，欢迎咨询和交流！

