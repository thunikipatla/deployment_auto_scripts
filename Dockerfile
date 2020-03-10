FROM centos:7.6.1810

MAINTAINER demo <demo@gmail.com>

RUN yum update -y 

RUN yum install java-1.8.0-openjdk-devel -y 

#ADD http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.51/bin/apache-tomcat-8.5.51.tar.gz /opt

ADD apache-tomcat-8.5.51.tar.gz /opt

#RUN tar -xvf /opt/apache-tomcat-8.5.51.tar.gz -C /opt/

RUN mv /opt/apache-tomcat-8.5.51 /opt/tomcat

EXPOSE 8080 

COPY webapp/target/openmrs.war /opt/tomcat/webapps/

CMD sh /opt/tomcat/bin/startup.sh && while true ; do sleep 1000; done

#RUN yum install httpd -y 

#COPY ./index.html /var/www/html/

#CMD /usr/sbin/httpd -k start && while true ; do sleep 1000; done 
