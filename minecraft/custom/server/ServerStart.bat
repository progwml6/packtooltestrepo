if NOT EXIST minecraft_server.1.7.10.jar (
    echo "running install script!"
	call FTBInstall.bat
	)
echo "make sure to read eula.txt before playing!"
java -server -Xms2048m -Xmx3072m -XX:PermSize=256m -XX:+UseParNewGC -XX:+UseConcMarkSweepGC -jar FTBServer-1.7.10-1231.jar nogui
pause