rm -rf dist

cd lib
./download.sh
cd ..

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
