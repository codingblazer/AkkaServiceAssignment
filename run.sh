sbt clean test assembly
docker build -t codingblazer/dockerimage .
echo $pass | docker login -u $user --password-stdin
docker push codingblazer/dockerimage
docker run -d -p 127.0.0.1:80:4567 codingblazer/dockerimage
docker ps -a