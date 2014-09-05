FROM tifayuki/java:7
MAINTAINER Feng Honglin <hfeng@tutum.co>

RUN apt-get update && \
    apt-get install -y pwgen unzip && \
    wget -q http://iweb.dl.sourceforge.net/project/jboss/JBoss/JBoss-4.2.3.GA/jboss-4.2.3.GA.zip && \
    unzip -q jboss-4.2.3.GA.zip && \
    rm jboss-4.2.3.GA.zip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD jmx-console.web.xml /jboss-4.2.3.GA/server/default/deploy/jmx-console.war/WEB-INF/web.xml
ADD jmx-console.jboss-web.xml /jboss-4.2.3.GA/server/default/deploy/jmx-console.war/WEB-INF/jboss-web.xml
ADD web-console.web.xml /jboss-4.2.3.GA/server/default/deploy/management/console-mgr.sar/web-console.war/WEB-INF/web.xml
ADD web-console.jboss-web.xml /jboss-4.2.3.GA/server/default/deploy/management/console-mgr.sar/web-console.war/WEB-INF/jboss-web.xml

ADD run.sh /run.sh
ADD set_jboss_admin_pass.sh /set_jboss_admin_pass.sh
RUN chmod +x /*.sh

# Exposed ENV
ENV JBOSS_PASS **Random**

EXPOSE 8080
CMD ["/run.sh"]
