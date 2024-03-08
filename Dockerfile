FROM public.ecr.aws/docker/library/ubuntu:jammy

RUN apt update -y

COPY komiser /usr/bin/komiser

RUN chmod +x /usr/bin/komiser

EXPOSE 3000
ENTRYPOINT ["komiser", "start", "--config", "./config.toml"]
