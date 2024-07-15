FROM ghcr.io/livebook-dev/livebook

# RUN apt-get update -y && apt-get install -y iputils-ping

# Configure your port accordingly
ENV LIVEBOOK_PORT 80
EXPOSE 80

# If you have a persistent volume, configure it here
ENV LIVEBOOK_DATA_PATH "/data"
ENV LIVEBOOK_NODE "livebook@evablut-lb.web"
ENV LIVEBOOK_DISTRIBUTION "name"
ENV LIVEBOOK_DEFAULT_RUNTIME "attached:phx@evablut-ex.web:MAVU_COOKIE"


USER root
RUN mkdir -p /data
RUN chmod 777 /data


