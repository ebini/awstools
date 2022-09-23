FROM amazon/aws-cli
RUN yum -y install openssl \
&& curl -o kubectl https://s3.eu-central-1.amazonaws.com/amazon-eks/1.23.7/2022-06-29/bin/linux/amd64/kubectl \
&& chmod +x kubectl \
&& mv kubectl /usr/local/bin
WORKDIR /tmp
