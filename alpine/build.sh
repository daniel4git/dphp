#!/bin/bash

# 清除已有的
docker stop alpine
docker rm alpine
docker rmi cyy/alpine:3.6 

# 重新生成
docker build -t cyy/alpine:3.6 ./
