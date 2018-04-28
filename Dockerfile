FROM node:6.9.2
EXPOSE 8080
RUN DT=`date`; sed "s/DATETIME/$DT/g" server.js
COPY server.js .
CMD node server.js
