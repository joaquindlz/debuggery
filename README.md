# Debuggery

> A docker container for debugging network things, redis, postgresql, etc. 🔋's included.

## How to

## Kubernetes
```bash
alias kdebug='kubectl run --rm -i -t debug --image=joaquindlz/debuggery:3.14 --restart=Never'
```

## Docker
```bash
docker run --rm -it joaquindlz/debuggery:3.14
```