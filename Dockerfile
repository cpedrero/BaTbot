FROM debian:stable-slim
RUN apt-get update && apt-get install -y curl nano telnet systemd-sysv net-tools iputils-ping ssh
CMD mkdir /root/.ssh && chmod 700 /root/.ssh
CMD chmod 400 /root/.ssh/id_rsa
RUN mkdir BaTbot
WORKDIR /BaTbot
COPY . .

CMD ["bash", "/BaTbot/bin/batbot"]