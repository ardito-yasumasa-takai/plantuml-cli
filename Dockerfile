FROM openjdk:buster

COPY ./plantuml /usr/local/bin/plantuml
RUN apt update && apt install --no-install-recommends -y graphviz fonts-noto curl
RUN curl -kL "http://sourceforge.net/projects/plantuml/files/plantuml.jar/download" -o /usr/local/bin/plantuml.jar
RUN chmod a+x /usr/local/bin/plantuml
WORKDIR /usr/local/bin

