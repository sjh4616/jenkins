# jenkins

docker build -t <도커 계정명>/jenkins:lts .

docker push <도커 계정명>/jenkins:lts

쿠버네티스에서 사용하려면 Dockerfile의 마지막 줄에

RUN curl -LO \
"https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
chmod +x kubectl && mv kubectl /usr/local/bin

추가한다.
