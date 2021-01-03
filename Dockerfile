FROM fauria/vsftpd:latest

LABEL maintainer "Dschinghis Kahn"

RUN usermod -u 1000 ftp
RUN groupmod -g 1000 ftp

RUN yum install -y nc

EXPOSE 20/TCP
EXPOSE 21/TCP

HEALTHCHECK CMD nc -z localhost 20 || exit 1

CMD ["/usr/sbin/run-vsftpd.sh"]
