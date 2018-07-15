FROM debian
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y vim

#CMD ["echo", "hello world"]
#COPY abc.txt /src/abc.txt
ADD abc.txt /src/abc.txt