FROM fauria/vsftpd:latest

LABEL maintainer "Dschinghis Kahn"

RUN usermod -u 1000 ftp
RUN groupmod -g 1000 ftp

EXPOSE 20/TCP
EXPOSE 21/TCP

CMD ["/usr/sbin/run-vsftpd.sh"]
