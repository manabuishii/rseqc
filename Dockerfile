FROM myoshimura080822/rseqc:170224
ENV DEBIAN_FRONTEND noninteractive
RUN rm /etc/apt/sources.list.d/jessie-backports.list \
 && echo "deb http://deb.debian.org/debian jessie main" > /etc/apt/sources.list \
 && echo "deb http://security.debian.org jessie/updates main" >> /etc/apt/sources.list \
 && echo "deb http://cran.ism.ac.jp/bin/linux/debian jessie-cran35/" >> /etc/apt/sources.list \
 && apt-get update \
 && apt-get install --quiet --yes --force-yes --no-install-recommends r-base-core \
 &&  apt-get clean \
 && rm -rf /var/lib/apt/lists/*
