FROM debian:trixie

RUN apt update && \
	apt install -y postgresql-client-17 && \
	apt clean

ENTRYPOINT entrypoint.sh
