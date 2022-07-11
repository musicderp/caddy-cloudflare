FROM caddy:builder AS builder

RUN caddy-builder \
    github.com/caddy-dns/cloudflare \
    github.com/caddy-dns/route53

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
