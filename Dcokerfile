FROM maven AS buildstage
RUN mkdir /opt/mindcircuit13
WORKDIR /opt/mindcircuit13
COPY . .
RUN mvn clean install 
