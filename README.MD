Build
`docker build -t grpc-demo-client -f ./Dockerfile .`

Run client
`docker run --rm -it -v $(pwd):/app -w /app --name grpc-demo-client-container grpc-demo-client php index.php`
