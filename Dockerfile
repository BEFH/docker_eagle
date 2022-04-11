FROM alpine:3.14
RUN wget https://storage.googleapis.com/broad-alkesgroup-public/Eagle/downloads/Eagle_v2.4.1.tar.gz && \
  mkdir /tables && \
  tar -xf Eagle_v2.4.1.tar.gz && \
  mv Eagle_v2.4.1/eagle /usr/bin/ && \
  mv Eagle_v2.4.1/tables/genetic_map_hg19_withX.txt.gz ./ && \
  mv Eagle_v2.4.1/tables/genetic_map_hg19_withX.txt.gz ./ && \
  rm -rf Eagle_v2.4.1.tar.gz Eagle_v2.4.1
ENTRYPOINT ["eagle"]
