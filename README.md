# Burp as a Docker Container

How to run any GUI application (and Burp in particular) from Docker.




## Usage

1. Place the Burp (Professional or Free) JAR file and the licence key in the `_data/sources` folder
2. Export the local IP address: `export LOCAL_IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')`
DISPLAY=${LOCAL_IP}:0
ENV_MEM_JVM=2048m
ENV_BURP_PRO=0        # 1 for Burp Pro, 0 for Free version
``` 
4. Start services: `docker-compose up`
