FROM fedora:latest
RUN dnf -yqq upgrade 
RUN dnf -yqq tuxpaint
RUN dnf -yqq vim 
RUN dnf -yqq httpd
COPY myinfo.html /var/www/html/ 
EXPOSE 80
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND