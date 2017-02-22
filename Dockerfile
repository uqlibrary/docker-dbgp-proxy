FROM uqlibrary/docker-base:12

MAINTAINER Dan Callan <d.callan@library.uq.edu.au>

RUN \
  pip2 install --upgrade pip && \
  pip2 install komodo-python-dbgp

CMD /usr/bin/pydbgpproxy -d 0.0.0.0:9000 -i 0.0.0.0:9001

EXPOSE 9000 9001
