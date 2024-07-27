rm -rf dist

cd lib
./download.sh
cd ..

#export QUASAR_PUBLIC_PATH=mapapi

if [ -z "$QUASAR_PUBLIC_PATH" ]; then
  echo "QUASAR_PUBLIC_PATH is empty, use crudapi"
  rm -rf ../src/main/resources/static/crudapi
  CRUDAPI_VERSION=1.6.2
  tar -zxvf ./lib/crudapi-admin-web-$CRUDAPI_VERSION.tar.gz -C ./src/main/resources/static
else
  echo "QUASAR_PUBLIC_PATH is not empty: $QUASAR_PUBLIC_PATH"
  sed -i 's/crudapi/mapapi/g' ./src/main/resources/static/index.html
  rm -rf ./src/main/resources/static/mapapi
  cp -R ../crudapi-admin-web/dist/spa/mapapi ./src/main/resources/static
fi

mvn clean install

mkdir -p dist/crudapi
mkdir -p dist/crudapi/bin
mkdir -p dist/crudapi/oss/download
mkdir -p dist/crudapi/log

cp ./target/crudapi-example-1.6.2.jar ./dist/crudapi/bin/crudapi.jar
cp ./lib/WinSW-x64.exe ./dist/crudapi/bin/crudapi.exe
cp ./lib/crudapi.xml ./dist/crudapi/bin/crudapi.xml
cp ./lib/*.bat ./dist/crudapi/bin
cp ./src/main/resources/application-windows.properties ./dist/crudapi/bin/application.properties

cd dist
nowtime=`date +'%Y%m%d%H%M%S'`
tar -zcvf crudapi-${nowtime}.tar.gz crudapi
cd ..
