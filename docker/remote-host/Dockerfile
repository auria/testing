FROM ubuntu:18.04

RUN apt-get -q update && \
    apt-get install -qy openssh-server iproute2 && \
    apt-get clean -qy

RUN useradd -m -s /bin/bash ubuntu && \
    mkdir /home/ubuntu/.ssh && \
    chmod 700 /home/ubuntu/.ssh

COPY client.pub /home/ubuntu/.ssh/authorized_keys

RUN chown ubuntu:ubuntu -R /home/ubuntu && \
    chmod 600 /home/ubuntu/.ssh/authorized_keys && \
    mkdir /var/run/sshd

CMD ["/usr/sbin/sshd", "-D"]
