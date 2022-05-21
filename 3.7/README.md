# Robot Framework Language Server

A configuration to run [robotframework-lsp](https://github.com/robocorp/robotframework-lsp) language server with [jsonrpc-ws-proxy](https://github.com/wylieconlon/jsonrpc-ws-proxy) as proxy.

### Requirements

- Python 3.7 or higher
- NodeJS

### How to run

From command line:

```
bash launch.sh
```

With docker:

```
sudo docker build -t robot-language-server .
sudo docker run -it -p 5555:5555 robot-language-server
```

The default port is `5555`. This can be changed by passing the desired port number as an argument to the launch script (or docker container).

# Image size

Using Dockerfile.before: 1.07GB
Using Dockerfile.after: 592MB
