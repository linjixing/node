FROM linjixing/ubuntu:25.10

COPY init /usr/bin/init

COPY supervisord.conf /etc/supervisor/supervisord.conf

COPY home /tmp/home

ENTRYPOINT ["init"]

CMD [ "supervisord","-c","/etc/supervisor/supervisord.conf" ]
