FROM debian:jessie-slim
MAINTAINER xkiracn@gmail.com

# ADD https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh /opt/
ADD https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-latest-Linux-x86_64.sh /opt/
RUN apt-get update && apt-get install -y --no-install-recommends bzip2 \
		&& bash /opt/Miniconda3-latest-Linux-x86_64.sh -b
RUN /root/miniconda3/bin/pip install jupyter pandas numpy scikit-learn
COPY start.sh /usr/local/bin/
CMD sh /usr/local/bin/start.sh
EXPOSE 8000

