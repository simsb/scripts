#!/bin/bash
export JAVA_OPTIONS="-Dframework.database=oracle -Dframework.switchOnFullTextSearch=false -Dframework.log.dir=/home/ben/fwi_log -Djava.security.auth.login.config=/home/ben/jaas.config -Xdebug -Xnoagent -Xrunjdwp:transport=dt_socket,address=4000,server=y,suspend=n -javaagent:/home/ben/wlsdomain/base_domain/lib/aspectjweaver.jar -Dtoplink.xml.platform=oracle.toplink.platform.xml.jaxp.JAXPPlatform"
cd /home/ben/wlsdomain/base_domain/config/jdbc
ln -sf oracleDS.txt OracleDS-0429-jdbc.xml
../../startWebLogic.sh
