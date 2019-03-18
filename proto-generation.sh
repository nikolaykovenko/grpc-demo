#!/bin/bash

protoc --proto_path=protos \
  --php_out=generated \
  --grpc_out=generated \
  --plugin=protoc-gen-grpc=./plugins/grpc_php_plugin \
  ./protos/drivers.proto