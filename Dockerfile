FROM debian:buster-slim
RUN apt-get update && \
  apt-get install -y wget libc6 libgomp1 && \
  apt-get clean && \
  wget https://storage.googleapis.com/broad-alkesgroup-public/Eagle/downloads/Eagle_v2.4.1.tar.gz && \
  mkdir /tables && \
  tar -xf Eagle_v2.4.1.tar.gz && \
  mv Eagle_v2.4.1/eagle /usr/bin/ && \
  ls -l Eagle_v2.4.1/tables/ && \
  mv Eagle_v2.4.1/tables/genetic_map_hg19_withX.txt.gz /tables/ && \
  mv Eagle_v2.4.1/tables/genetic_map_hg38_withX.txt.gz /tables/ && \
  rm -rf Eagle_v2.4.1.tar.gz Eagle_v2.4.1
ENTRYPOINT ["eagle"]
