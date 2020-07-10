if test -z "$ENV_MEM_JVM"; then
    ENV_MEM_JVM=1024m
fi
echo "[+] JVM Mem: ${ENV_MEM_JVM}"

if [ "$ENV_BURP_PRO" -eq "1" ]; then
    echo "[+] Running Burp Pro"
     java -Xbootclasspath/p:Loader.jar -Xmx${ENV_MEM_JVM}  /home/tester/sources/burp.jar
else
    echo "[+] Running Burp Free"
     java -Xbootclasspath/p:Loader.jar -Xmx${ENV_MEM_JVM}  /home/tester/sources/burp.jar
fi
