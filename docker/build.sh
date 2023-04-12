#!/bin/bash

TAG=v1.0.0

echo "Building CUDA Docker Image"
#python3 ./docker/check_cuda.py > SM_NUMBER
docker build --build-arg BASE_IMAGE="nvcr.io/nvidia/pytorch:22.12-py3" -f ./docker/Dockerfile -t jt-llm/chatglm-6b:${TAG} .
