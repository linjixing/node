FROM ubuntu:22.04

ENV PATH=/home/bin:$PATH

COPY init /usr/bin/init

COPY home /tmp/home

RUN export DEBIAN_FRONTEND=noninteractive; \
    apt-get update; \
    apt-get install -y ca-certificates curl wget unzip net-tools tzdata vim sudo supervisor --no-install-recommends; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/*; \
    ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime; \
    echo 'Asia/Shanghai' > /etc/timezone; \
    echo 'set fileencodings=utf-8,gbk,utf-16le,cp1252,iso-8859-15,ucs-bom' >> /etc/vim/vimrc; \
    echo 'set termencoding=utf-8' >> /etc/vim/vimrc; \
    echo 'set encoding=utf-8' >> /etc/vim/vimrc

ENTRYPOINT ["init"]

CMD [ "supervisord","-c","/home/conf/supervisord.conf" ]
