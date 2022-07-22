FROM debian:stable-slim
RUN apt-get update && apt-get install -y curl nano telnet systemd-sysv net-tools
RUN mkdir BaTbot
WORKDIR /BaTbot
COPY . .

CMD ["bash", "/BaTbot/bin/batbot"]