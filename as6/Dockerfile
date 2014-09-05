FROM tifayuki/java:6
MAINTAINER Feng Honglin <hfeng@tutum.co>

RUN apt-get update && \
    apt-get install -y pwgen unzip && \
    wget -q http://download.jboss.org/jbossas/6.1/jboss-as-distribution-6.1.0.Final.zip && \
    unzip -q jboss-as-distribution-6.1.0.Final.zip && \
    rm jboss-as-distribution-6.1.0.Final.zip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD jmx-console.web.xml /jboss-6.1.0.Final/common/deploy/jmx-console.war/WEB-INF/web.xml
ADD jmx-console.jboss-web.xml /jboss-6.1.0.Final/common/deploy/jmx-console.war/WEB-INF/jboss-web.xml
ADD web-console.web.xml /jboss-6.1.0.Final/common/deploy/jbossws-console.war/WEB-INF/web.xml
ADD web-console.jboss-web.xml /jboss-6.1.0.Final/common/deploy/jbossws-console.war/WEB-INF/jboss-web.xml


ADD run.sh /run.sh
ADD set_jboss_admin_pass.sh /set_jboss_admin_pass.sh
RUN chmod +x /*.sh

# Exposed ENV
ENV JBOSS_PASS **Random**

EXPOSE 8080
CMD ["/run.sh"]
