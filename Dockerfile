FROM jboss/wildfly:10.1.0.Final

MAINTAINER Robert Brem <robert.brem@adesso.ch>

WORKDIR ${JBOSS_HOME}
ADD mssql-jdbc.jar ${JBOSS_HOME}
USER root
ADD start.sh ${JBOSS_HOME}
RUN chown jboss:jboss start.sh
ADD add-datasource.sh ${JBOSS_HOME}
RUN chown jboss:jboss add-datasource.sh
USER jboss

CMD ${JBOSS_HOME}/start.sh