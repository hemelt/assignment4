FROM fedora:latest
RUN apt-get update 
RUN dnf -y install tuxpaint
RUN dnf -y install vim
RUN dnf -y install httpd
COPY myinfo.html /var/www/html/
EXPOSE 80/tcp
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND

