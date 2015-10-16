# BEGIN

CATALINA_HOME=/opt/apache-tomcat/tomcat8
CATALINA_PID=$CATALINA_HOME/conf/catalina.pid

# Added for performance and you can adjust accordingly
 JAVA_OPTS="-Djava.awt.headless=true -ea -Xmx1024m -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled"

# Added for Tomcat to find Rice and KC Config
 JAVA_OPTS="$JAVA_OPTS $DEBUG_OPTS -Dalt.config.location=/opt/kuali/main/dev/kc-config.xml"
# END
