cd "$(dirname "$0")"
MCVER="1.7.10"
JARFILE="minecraft_server.${MCVER}.jar"
LAUNCHWRAPPER="net/minecraft/launchwrapper/1.11/launchwrapper-1.11.jar"
which wget
if [ $? -eq 0 ]; then
        wget --no-check-certificate -O ${JARFILE} https://s3.amazonaws.com/Minecraft.Download/versions/${MCVER}/${JARFILE}
        wget --no-check-certificate -O libraries/${LAUNCHWRAPPER} https://libraries.minecraft.net/${LAUNCHWRAPPER}
else
        which curl
        if [ $? -eq 0 ]; then
                curl -k -o ${JARFILE} https://s3.amazonaws.com/Minecraft.Download/versions/${MCVER}/minecraft_server.${MCVER}.jar
        		curl -k -o libraries/${LAUNCHWRAPPER} https://libraries.minecraft.net/${LAUNCHWRAPPER}
        else
                echo "Neither wget or curl were found on your system. Please install one and try again"
        fi
fi
