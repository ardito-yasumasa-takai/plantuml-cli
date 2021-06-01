FROM openjdk:buster

COPY ./plantuml /usr/local/bin/plantuml
RUN apt update && apt install --no-install-recommends -y graphviz fonts-noto-cjk curl
RUN curl -kL "http://sourceforge.net/projects/plantuml/files/plantuml.jar/download" -o /usr/local/bin/plantuml.jar
RUN chmod a+x /usr/local/bin/plantuml

ENV LANG="ja_JP.UTF-8" \
    LANGUAGE="ja_JP:ja" \
    LC_ALL="ja_JP.UTF-8"
WORKDIR /usr/local/bin

