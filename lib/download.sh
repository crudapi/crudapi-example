rm -rf *.jar
VERSION=1.2.0
BASE_URL=https://download.crudapi.cn/free
CRUDAPI_CORE_JRA_URL=$BASE_URL/$VERSION/crudapi-core-$VERSION.jar
CRUDAPI_API_JRA_URL=$BASE_URL/$VERSION/crudapi-api-$VERSION.jar
echo "$CRUDAPI_CORE_JRA_URL"
echo "$CRUDAPI_API_JRA_URL"
curl -O $CRUDAPI_CORE_JRA_URL
curl -O $CRUDAPI_API_JRA_URL
ls *.jar


mvn install:install-file -Dfile=crudapi-core-$VERSION.jar -DgroupId=cn.crudapi -DartifactId=crudapi-core -Dversion=$VERSION -Dpackaging=jar
mvn install:install-file -Dfile=crudapi-api-$VERSION.jar -DgroupId=cn.crudapi -DartifactId=crudapi-api -Dversion=$VERSION -Dpackaging=jar
