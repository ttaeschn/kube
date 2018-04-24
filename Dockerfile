FROM php:7.0-apache
COPY public-html/ /usr/local/apache2/htdocs/public-html/
EXPOSE 80
