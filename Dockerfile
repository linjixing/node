FROM linjixing/ubuntu:22.04

COPY init /usr/bin/init

COPY home /tmp/home

ENTRYPOINT ["init"]

CMD [ "supervisord","-c","/etc/supervisord.conf" ]
