FROM amazonlinux

ENV PATH="/opt:${PATH}"

RUN yum install -y \
         jq \
         unzip \
         python3 \
         python3-pip

RUN pip3 install awscli

RUN cd /opt \
    && curl -o /opt/packer.zip https://releases.hashicorp.com/packer/1.5.6/packer_1.5.6_linux_amd64.zip \
    && unzip packer.zip \
    && rm /opt/packer.zip
