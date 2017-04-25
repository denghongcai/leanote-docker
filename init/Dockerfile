FROM mongo:latest

ARG LEANOTE_VERSION=2.4

ADD ./init.sh /
RUN chmod +x ./init.sh && \
apt-get update && \
apt-get install -y wget && \
wget https://jaist.dl.sourceforge.net/project/leanote-bin/${LEANOTE_VERSION}/leanote-linux-amd64-v${LEANOTE_VERSION}.bin.tar.gz && \
tar zxf leanote-linux-amd64-v${LEANOTE_VERSION}.bin.tar.gz && \
mv leanote/mongodb_backup . && \
rm -rf leanote && rm leanote-linux-amd64-v${LEANOTE_VERSION}.bin.tar.gz

CMD ["/init.sh"]
