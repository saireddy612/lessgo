FROM ubuntu
ENV pkg_name nginx
RUN apt-get update
RUN apt-get install $pkg_name -y
RUN mkdir sai
COPY index.html /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
