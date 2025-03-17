echo "
+----------------------------------------------------------------------
|                   冒险岛079 FOR CentOS/Ubuntu/Debian
+----------------------------------------------------------------------
"
java -cp ./bin/079server.jar -server -Djava.awt.im.style=off -DhomePath=./config/ -DscriptsPath=./scripts/ -DwzPath=./scripts/wz -Xms2024m -Xmx4048m -XX:MaxNewSize=2024m server.Start
