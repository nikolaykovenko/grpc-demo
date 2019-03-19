#!/bin/bash

docker run --rm -it -v $(pwd):/app -w /app grpc/php bash -c "protoc --php_out=generated --grpc_out=generated --plugin=protoc-gen-grpc=./plugins/grpc_php_plugin ./protos/drivers.proto"
