CRUDAPI_ADMIN_WEB_VERSION=1.6.2
CRUDAPI_VERSION=1.6.2
BASE_URL=https://download.crudapi.cn

CRUDAPI_ADMIN_WEB_GZ_URL=$BASE_URL/npm/crudapi-admin-web/$CRUDAPI_VERSION/crudapi-admin-web-$CRUDAPI_VERSION.tar.gz
CRUDAPI_CORE_JRA_URL=$BASE_URL/maven/crudapi/$CRUDAPI_VERSION/crudapi-core-$CRUDAPI_VERSION.jar
CRUDAPI_API_JRA_URL=$BASE_URL/maven/crudapi/$CRUDAPI_VERSION/crudapi-api-$CRUDAPI_VERSION.jar
CRUDAPI_SECURITY_JRA_URL=$BASE_URL/maven/crudapi/$CRUDAPI_VERSION/crudapi-security-$CRUDAPI_VERSION.jar
CRUDAPI_REST_JRA_URL=$BASE_URL/maven/crudapi/$CRUDAPI_VERSION/crudapi-rest-$CRUDAPI_VERSION.jar
CRUDAPI_WEIXIN_JRA_URL=$BASE_URL/maven/crudapi/$CRUDAPI_VERSION/crudapi-weixin-$CRUDAPI_VERSION.jar
CRUDAPI_WINSE_URL=$BASE_URL/exe/WinSW-x64.exe.tar.gz

echo "$CRUDAPI_ADMIN_WEB_GZ_URL"
echo "$CRUDAPI_CORE_JRA_URL"
echo "$CRUDAPI_API_JRA_URL"
echo "$CRUDAPI_SECURITY_JRA_URL"
echo "$CRUDAPI_REST_JRA_URL"
echo "$CRUDAPI_WEIXIN_JRA_URL"
echo "$CRUDAPI_WINSE_URL"

rm -rf *.gz
rm -rf *.jar

curl -k -O $CRUDAPI_ADMIN_WEB_GZ_URL
curl -k -O $CRUDAPI_CORE_JRA_URL
curl -k -O $CRUDAPI_API_JRA_URL
curl -k -O $CRUDAPI_SECURITY_JRA_URL
curl -k -O $CRUDAPI_REST_JRA_URL
curl -k -O $CRUDAPI_WEIXIN_JRA_URL
curl -k -O $CRUDAPI_WINSE_URL

ls *.gz
ls *.jar

mvn install:install-file -Dfile=crudapi-core-$CRUDAPI_VERSION.jar -DgroupId=cn.crudapi -DartifactId=crudapi-core -Dversion=$CRUDAPI_VERSION -Dpackaging=jar
mvn install:install-file -Dfile=crudapi-api-$CRUDAPI_VERSION.jar -DgroupId=cn.crudapi -DartifactId=crudapi-api -Dversion=$CRUDAPI_VERSION -Dpackaging=jar
mvn install:install-file -Dfile=crudapi-rest-$CRUDAPI_VERSION.jar -DgroupId=cn.crudapi -DartifactId=crudapi-rest -Dversion=$CRUDAPI_VERSION -Dpackaging=jar
mvn install:install-file -Dfile=crudapi-security-$CRUDAPI_VERSION.jar -DgroupId=cn.crudapi -DartifactId=crudapi-security -Dversion=$CRUDAPI_VERSION -Dpackaging=jar
mvn install:install-file -Dfile=crudapi-weixin-$CRUDAPI_VERSION.jar -DgroupId=cn.crudapi -DartifactId=crudapi-weixin -Dversion=$CRUDAPI_VERSION -Dpackaging=jar

tar -zxvf WinSW-x64.exe.tar.gz
