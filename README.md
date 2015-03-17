![centos 7.0.1406](https://img.shields.io/badge/centos-7.0.1406-brightgreen.svg) ![License MIT](https://img.shields.io/badge/license-MIT-blue.svg)

# docker-centosjp

### Base Docker Image

centos:centos7

### 説明

centos7へ日本語サポートを追加したDockerコンテナイメージです。
各種コンテナイメージのベースとなります。

[Dockerとは？](https://docs.docker.com/ "Dockerとは？")  
[Docker Command Reference](https://docs.docker.com/reference/commandline/cli/ "Docker Command Reference")

### 使用方法

git pull後に

    $ cd docker-centosjp

イメージ作成

    $ docker build -t <tag>/centosjp .

起動しbash実行

    $ docker run --name <name> -ti <tag>/centosjp /bin/bash

### License

MIT
