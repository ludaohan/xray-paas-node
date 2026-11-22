# xray-paas-node

Minimal Xray (VLESS + WebSocket) image for PaaS free tiers that terminate TLS
and forward plain HTTP to the container (Komuta, Quave Hobby, …).

Configuration is entirely by environment variable — no secrets in this repo:

- `PORT` — port Xray listens on (default 8080; PaaS platforms usually inject it)
- `UUID` — VLESS client UUID (required)
- `WS_PATH` — WebSocket path (default `/xray`)

The platform's auto-HTTPS domain is the TLS frontend; Xray itself speaks
plain WebSocket behind it.
