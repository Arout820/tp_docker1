FROM python:latest

WORKDIR /python

COPY . /python

RUN wget https://dlm.mariadb.com/2678579/Connectors/c/connector-c-3.3.3/mariadb-connector-c-3.3.3-debian-buster-amd64.tar.gz -O - | tar -zxf - --strip-components=1 -C /usr
ENV LD_PRELOAD=/usr/lib/mariadb/libmariadb.so
ENV LD_LIBRARY_PATH=/usr/lib/mariadb
RUN pip3 install --no-cache-dir mariadb

CMD ["python", "main.py"]
