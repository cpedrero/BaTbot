FROM debian@sha256:ae12e1c89fd6d8d69e3a3fe5fd9b3c6d2e5a48b71af2efd011f183dc0a94856c
RUN apt-get update && apt-get install -y curl nano telnet systemd-sysv net-tools iputils-ping ssh
CMD mkdir -p /root/.ssh && chmod 700 /root/.ssh
CMD chmod 400 /root/.ssh/id_rsa
RUN mkdir BaTbot
WORKDIR /BaTbot
COPY . .

CMD ["bash", "/BaTbot/bin/batbot"]