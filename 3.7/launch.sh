#!/bin/bash

PORT=${1:-5555}

[ ! -d "jsonrpc-ws-proxy" ] && git clone https://github.com/wylieconlon/jsonrpc-ws-proxy.git

[ ! -d "robotframework-lsp" ] && git clone https://github.com/robocorp/robotframework-lsp.git

[ ! -d "jsonrpc-ws-proxy/dist" ] && cd jsonrpc-ws-proxy && npm install && npm run prepare && cd ..

node ./jsonrpc-ws-proxy/dist/server.js --port $PORT --languageServers servers.yml