FROM ghcr.io/ssangyongsport/chaskiqthrj:sha-964acf8

COPY --chmod=755 start.sh ./

ENTRYPOINT ["/bin/sh"]

CMD ["start.sh"]
