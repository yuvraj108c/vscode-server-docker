# Vscode Server Docker

- Run vscode via docker & access it on the browser on port 8888
- Perfect for remote development on cloud servers
- Supports file upload/download

## Specifications

- OS: Ubuntu 22.04 LTS
- Python: 3.10
- Code Server: 4.22.1

## Runpod Usage

This image works on [Runpod](https://runpod.io?ref=samjaz6c). Select one of the following templates to launch it on Runpod.

| Type                               | Template                                                                                                |
| ---------------------------------- | ------------------------------------------------------------------------------------------------------- |
| ubuntu 22.04                       | [yuvraj108c/vscode-server:ubuntu](https://runpod.io/console/gpu-cloud?template=8t27z7fy0k&ref=samjaz6c) |
| cuda 12.3 + cudnn + tensorrt 8.6.1 | [yuvraj108c/vscode-server:cuda](https://runpod.io/console/gpu-cloud?template=8ihwaqh6q2&ref=samjaz6c)   |

## Running locally

```bash
# ubuntu 22
docker run -p 8888:8888 -v ${PWD}:/workspace yuvraj108c/vscode-server:ubuntu

# cuda 12.3 + tensorrt 8.6.1
docker run --gpus all -p 8888:8888 -v ${PWD}:/workspace yuvraj108c/vscode-server:cuda
```

## Tags

There are currently 2 tags with different base images as follows:

| Tag    | Base Image                          |
| ------ | ----------------------------------- |
| ubuntu | `ubuntu:latest`                     |
| cuda   | `nvcr.io/nvidia/tensorrt:24.01-py3` |
| yuvraj108c/vscode-server-docker:python-3.10    | `python:3.10-slim` |
