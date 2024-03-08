FROM public.ecr.aws/docker/library/ubuntu:jammy

RUN apt update -y

RUN wget https://cli.komiser.io/latest/komiser_Linux_x86_64 -O komiser

COPY komiser /usr/bin/komiser
RUN chmod +x /usr/bin/komiser && \
    mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

EXPOSE 3000
ENTRYPOINT ["komiser", "start", "--config", "./config.toml"]
