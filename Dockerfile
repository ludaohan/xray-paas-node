FROM ghcr.io/xtls/xray-core:latest
COPY config.json.template /etc/xray/config.json.template
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 8080
ENTRYPOINT ["/entrypoint.sh"]
