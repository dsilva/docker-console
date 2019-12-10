FROM ubuntu:19.10
RUN apt-get update && apt-get install -y curl dnsutils gnupg python3 python3-distutils ca-certificates unzip sudo iproute2 vim iputils-ping telnet net-tools

RUN echo "Installing AWS CLI v2" && \
  curl "https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
  (echo '3916035b11a5e1ff336c08ef7f32e7ff  awscliv2.zip' | md5sum -c /dev/stdin) && \
  unzip awscliv2.zip && \
  sudo ./aws/install


