sbt clean test assembly
docker build -t codingblazer/dockerimage:"$GO_REVISION" .
echo $pass | docker login -u $user --password-stdin
docker push codingblazer/dockerimage/"$GO_REVISION"
