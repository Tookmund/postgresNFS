FROM debian:trixie

COPY entrypoint.sh /opt/
RUN apt update && \
	apt install -y postgresql-client-17 && \
	apt clean

ENTRYPOINT /opt/entrypoint.sh
