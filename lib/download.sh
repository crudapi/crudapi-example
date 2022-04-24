rm -rf *.jar

VERSION=1.4.0
BASE_URL=https://download.crudapi.cn/maven/crudapi
CRUDAPI_CORE_JRA_URL=$BASE_URL/$VERSION/crudapi-core-$VERSION.jar
CRUDAPI_API_JRA_URL=$BASE_URL/$VERSION/crudapi-api-$VERSION.jar
CRUDAPI_SECURITY_JRA_URL=$BASE_URL/$VERSION/crudapi-security-$VERSION.jar
CRUDAPI_REST_JRA_URL=$BASE_URL/$VERSION/crudapi-rest-$VERSION.jar
CRUDAPI_WEIXIN_JRA_URL=$BASE_URL/$VERSION/crudapi-weixin-$VERSION.jar

echo "$CRUDAPI_CORE_JRA_URL"
echo "$CRUDAPI_API_JRA_URL"
echo "$CRUDAPI_SECURITY_JRA_URL"
echo "$CRUDAPI_REST_JRA_URL"
echo "$CRUDAPI_WEIXIN_JRA_URL"


curl -u $USERNAME:$PASSWORD -O $CRUDAPI_CORE_JRA_URL
curl -u $USERNAME:$PASSWORD -O $CRUDAPI_API_JRA_URL
curl -u $USERNAME:$PASSWORD -O $CRUDAPI_SECURITY_JRA_URL
curl -u $USERNAME:$PASSWORD -O $CRUDAPI_REST_JRA_URL
curl -u $USERNAME:$PASSWORD -O $CRUDAPI_WEIXIN_JRA_URL
ls *.jar

mvn install:install-file -Dfile=crudapi-core-$VERSION.jar -DgroupId=cn.crudapi -DartifactId=crudapi-core -Dversion=$VERSION -Dpackaging=jar
mvn install:install-file -Dfile=crudapi-api-$VERSION.jar -DgroupId=cn.crudapi -DartifactId=crudapi-api -Dversion=$VERSION -Dpackaging=jar
mvn install:install-file -Dfile=crudapi-rest-$VERSION.jar -DgroupId=cn.crudapi -DartifactId=crudapi-rest -Dversion=$VERSION -Dpackaging=jar
mvn install:install-file -Dfile=crudapi-security-$VERSION.jar -DgroupId=cn.crudapi -DartifactId=crudapi-security -Dversion=$VERSION -Dpackaging=jar
mvn install:install-file -Dfile=crudapi-weixin-$VERSION.jar -DgroupId=cn.crudapi -DartifactId=crudapi-weixin -Dversion=$VERSION -Dpackaging=jar


