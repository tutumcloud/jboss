FROM tifayuki/java:6
MAINTAINER Feng Honglin <hfeng@tutum.co>

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y wget pwgen
RUN wget -q http://download.jboss.org/jbossas/7.1/jboss-as-7.1.1.Final/jboss-as-7.1.1.Final.tar.gz && tar zxf jboss-as-7.1.1.Final.tar.gz && rm jboss-as-7.1.1.Final.tar.gz

RUN sed -i -r 's/jboss.bind.address.management:127.0.0.1/jboss.bind.address.management:0.0.0.0/' /jboss-as-7.1.1.Final/standalone/configuration/standalone.xml

ADD run.sh /run.sh
ADD set_jboss_admin_pass.sh /set_jboss_admin_pass.sh
RUN chmod +x /*.sh

# Exposed ENV
ENV JBOSS_PASS **Random**

EXPOSE 8080 9990
CMD ["/run.sh"]

