FROM tomcat:9.0.108-jdk17-corretto
RUN rm -rf /usr/local/tomcat/webapps/* //xóa mặc định của tomcat
COPY dist/ch04_ex1_survey.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]