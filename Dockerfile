# 使用你的基礎映像
FROM ghcr.io/ssangyongsport/chaskiqthrj:sha-964acf8

# 將 CA 憑證複製到容器中的 /etc/ssl/certs 目錄
COPY ca-cert.pem /etc/ssl/certs/ca-cert.pem

# 複製啟動腳本並設置執行權限
COPY --chmod=755 start.sh ./

# 設置 ENTRYPOINT 和 CMD
ENTRYPOINT ["/bin/sh"]
CMD ["start.sh"]