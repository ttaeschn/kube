FROM node:6.9.2
EXPOSE 8080
RUN DT=`date` && sed -i "s/DATETIME/$DT/g" server.js
COPY server.js .
CMD node server.js
