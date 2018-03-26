FROM ubuntu

RUN apt-get update
RUN apt-get install build-essential context -y
RUN apt-get install wget -y

RUN wget https://github.com/jgm/pandoc/releases/download/2.1.3/pandoc-2.1.3-1-amd64.deb
RUN dpkg -i pandoc-2.1.3-1-amd64.deb

COPY ./bin/entrypoint.sh /pandoc/bin/entrypoint.sh

RUN chmod +x /pandoc/bin/entrypoint.sh

WORKDIR /pandoc/src

ENTRYPOINT ["/pandoc/bin/entrypoint.sh"]
