# Vscode Server Docker

[![Build and Push Docker Images](https://github.com/yuvraj108c/vscode-server-docker/actions/workflows/build-and-push.yml/badge.svg)](https://github.com/yuvraj108c/vscode-server-docker/actions/workflows/build-and-push.yml)

- Run vscode via docker & access it on the browser on port 8888
- Perfect for remote development on cloud servers
- Supports file upload/download

## Usage

Pull and run an image from DockerHub:

```bash
docker pull yuvraj108c/vscode-server:python3.11
docker run -p 8888:8888 yuvraj108c/vscode-server:python3.11
```

## Available Tags

DockerHub: **[yuvraj108c/vscode-server](https://hub.docker.com/r/yuvraj108c/vscode-server)**

| Tag    | Image | Base Image                          |
| ------ | ----- | ----------------------------------- |
| python3.8 | `yuvraj108c/vscode-server:python3.8` | `python:3.8.20-slim` |
| python3.9 | `yuvraj108c/vscode-server:python3.9` | `python:3.9.12-slim` |
| python3.10 | `yuvraj108c/vscode-server:python3.10` | `python:3.10.12-slim` |
| python3.11 | `yuvraj108c/vscode-server:python3.11` | `python:3.11-slim` |
| python3.12 | `yuvraj108c/vscode-server:python3.12` | `python:3.12-slim` |
| python3.13 | `yuvraj108c/vscode-server:python3.13` | `python:3.13-slim` |
