FROM debian:stable

WORKDIR /
COPY cloudflare.sh /cloudflare.sh

RUN apt-get update && apt-get upgrade -y && apt-get install -y --force-yes curl && chmod +x /cloudflare.sh

ENV CLOUDFLARE_AUTH_EMAIL user@example.com
ENV CLOUDFLARE_AUTH_KEY 123456789
ENV CLOUDFLARE_ZONE example.com
ENV CLOUDFLARE_RECORD_NAME www.example.com

ENTRYPOINT ["cloudflare.sh"]
