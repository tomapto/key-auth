# kongCredential
## 数据库安装 9.4
### 初始化数据库目录
initdb pgdb
### 启动
pg_ctl -D pgdb -l logfile start
### 停止
pg_ctl -D pgdb stop -s -m fast
## 数据库安装 9.6
https://wiki.postgresql.org/wiki/YUM_Installation

## 创建kong用户
CREATE USER kong; CREATE DATABASE kong OWNER kong;
### 配置kong.conf 修改数据库用户名密码,启动kong服务
kong start --conf /etc/conf/kong.conf
## kong 插件目录:
/usr/local/share/lua/5.1/kong/plugins/key-auth/
cp代码到这个目录
## 安装

```
curl -X POST http://localhost:8001/apis/ --data "name=mapdesign" --data "upstream_url=http://localhost:3000" --data "methods=POST,PATCH,DELETE,GET,PUT" --data "upstream_connect_timeout=300000" --data "upstream_send_timeout=300000" --data "upstream_read_timeout=300000"

curl -X POST http://localhost:8001/apis/mapdesign/plugins --data "name= key-auth"

// socket.io
curl -X POST http://localhost:8001/apis/ --data "name=mapdesignsocket" --data "methods=GET,POST" --data "uris=/socket.io" -d "strip_uri=false" -d "upstream_url=http://localhost:3500"
//geocoding
curl -X POST http://localhost:8001/apis/ --data "name=geocoding" --data "methods=GET,POST" --data "uris=/geocoding" -d "strip_uri=true" -d "upstream_url=http://t0-internal.map.design:3100"
//route
curl -X POST http://localhost:8001/apis/ --data "name=directions" --data "methods=GET,POST" --data "uris=/directions" -d "strip_uri=true" -d "upstream_url=http://t2-internal.map.design:5000"
```
## kong 插件目录:
/usr/local/share/lua/5.1/kong/plugins/key-auth/
## 启动kong
kong restart -c /etc/kong/kong.conf.default --nginx-conf /usr/local/share/lua/5.1/kong/plugins/key-auth/nginx.template 
