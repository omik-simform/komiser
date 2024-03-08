FROM public.ecr.aws/docker/library/ubuntu:jammy

RUN apt update -y

COPY komiser /usr/bin/komiser

COPY . .

RUN chmod +x /usr/bin/komiser

EXPOSE 3000
ENTRYPOINT ["komiser", "start"]
