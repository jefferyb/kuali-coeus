# BEGIN

CATALINA_HOME=/opt/apache-tomcat/tomcat8
CATALINA_PID=$CATALINA_HOME/conf/catalina.pid
# Added for performance and you can adjust accordingly
 JAVA_OPTS="-Djava.awt.headless=true -ea -Xmx1024m -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled"
# JAVA_OPTS="$JAVA_OPTS -Djava.awt.headless=true -Dfile.encoding=UTF-8 -server -Xms5g -Xmx5g -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC -ea -XX:+CMSClassUnloadingEnabled"
# JAVA_OPTS="$JAVA_OPTS -Dorg.apache.jasper.compiler.Parser.STRICT_QUOTE_ESCAPING=false -XX:PermSize=400m -XX:NewSize=1g -XX:MaxNewSize=1g"
# JAVA_OPTS="$JAVA_OPTS -XX:+DisableExplicitGC -XX:+CMSIncrementalMode -XX:+CMSIncrementalPacing -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath= -XX:+UseCompressedOops -XX:+CMSParallelRemarkEnabled -XX:CMSInitiatingOccupancyFraction=70 -XX:+UseCMSInitiatingOccupancyOnly"

# Added for Tomcat to find Rice and KC Config
 JAVA_OPTS="$JAVA_OPTS $DEBUG_OPTS -Dalt.config.location=/opt/kuali/main/dev/kc-config.xml"

# Added for Spring Instrumentation
# CATALINA_OPTS="$CATALINA_OPTS -javaagent:/opt/apache-tomcat/tomcat8/lib/spring-instrument-tomcat-3.2.12.RELEASE.jar"
# END
