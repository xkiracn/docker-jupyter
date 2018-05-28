FROM continuumio/miniconda:4.4.10
LABEL MAINTAINER xkiracn@gmail.com

RUN /opt/conda/bin/conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/ && \
	/opt/conda/bin/conda config --set show_channel_urls yes && \
	/opt/conda/bin/conda install jupyter pandas numpy scikit-learn matplotlib
COPY start.sh /usr/local/bin/
CMD sh /usr/local/bin/start.sh
EXPOSE 8000

