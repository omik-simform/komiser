FROM public.ecr.aws/docker/library/ubuntu:jammy

RUN apt update -y

COPY komiser /usr/bin/komiser

RUN chmod +x /usr/bin/komiser && \
    ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

EXPOSE 3000
ENTRYPOINT ["komiser", "start", "--config", "./config.toml"]
