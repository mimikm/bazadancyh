FROM ubuntu:16.04
RUN apt-get update -y && apt-get install
RUN echo "mysql-server mysql-server/root_password password dommar1" | debconf-set-selections
RUN echo "mysql-server mysql-server/root_password_again password dommar1" | debconf-set-selections
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server
RUN apt-get install -y git curl vim
EXPOSE 3306
CMD ["service", "mysql","start"]
