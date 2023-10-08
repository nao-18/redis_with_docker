FROM ubuntu:20.04

# 環境変数の設定
ENV DEBIAN_FRONTEND=noninteractive

# 必要なツールのインストール
RUN apt-get update && apt-get install -y \
    build-essential \
    wget \
    tcl \
    tmux \
    vim

# Redisのソースコードをホストからコピー
WORKDIR /tmp/redis-stable
COPY . ./