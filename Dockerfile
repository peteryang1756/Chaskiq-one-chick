FROM ghcr.io/ssangyongsport/chaskiqthrj:sha-964acf8

USER root

# 添加 CA 证书文件
COPY ca.pem /usr/local/share/ca-certificates/

# 更新 CA 证书
RUN update-ca-certificates

COPY --chmod=755 start.sh ./

ENTRYPOINT ["/bin/sh"]

CMD ["start.sh"]
