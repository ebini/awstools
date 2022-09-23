FROM amazon/aws-cli
RUN yum -y install openssl \
&& curl -o kubectl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
&& chmod +x kubectl \
&& mv kubectl /usr/local/bin
WORKDIR /tmp
