FROM public.ecr.aws/docker/library/ubuntu:jammy

WORKDIR /app

RUN apt update -y

COPY komiser /usr/bin/komiser

COPY config.toml /usr/bin/config.toml

COPY credentials /usr/bin/credentials

COPY credentials.yaml /usr/bin/credentials.yaml

COPY . .

RUN chmod +x /usr/bin/komiser

EXPOSE 3000
ENTRYPOINT ["komiser", "start"]
