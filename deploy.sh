rm -rf /root/tmp/*.war

cp -fr /root/.jenkins/workspace/POCGIT/build/target/*.war /root/tmp

rm -rf /opt/tomcat/apache-tomcat-8.0.47/webapps/*.war
rm -rf /opt/tomcat/apache-tomcat-8.0.47/webapps/NumberGenerator-${yymmdd}_${BUILD_NUMBER}-assembly

cp /root/tmp/*.war /opt/tomcat/apache-tomcat-8.0.47/webapps

cd /opt/tomcat/apache-tomcat-8.0.47/bin

sh ./startup.sh