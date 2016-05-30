FROM uqlibrary/docker-base:5

RUN \
  pip2 install --upgrade pip && \
  pip2 install komodo-python-dbgp

CMD /usr/bin/pydbgpproxy -d 0.0.0.0:9000 -i 0.0.0.0:9001

EXPOSE 9000 9001
