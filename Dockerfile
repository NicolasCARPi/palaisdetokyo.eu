FROM ghcr.io/deltablot/custom-http-nginx:latest
COPY palaisdetokyo.eu.conf /etc/nginx/conf.d
COPY src/ /app
WORKDIR /app
USER root
RUN brotli -vf *.xml *.ico *.txt
USER nobody
