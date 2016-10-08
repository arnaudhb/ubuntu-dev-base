FROM arnaudhb/ubuntu

RUN apt-get update && apt-get install -y sudo x11-apps

# Replace 1000 with your user / group id
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/dev && \
    echo "dev:x:${uid}:${gid}:Developer,,,:/home/dev:/bin/bash" >> /etc/passwd && \
    echo "dev:x:${uid}:" >> /etc/group && \
    echo "dev ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/dev && \
    chmod 0440 /etc/sudoers.d/dev && \
    chown ${uid}:${gid} -R /home/dev

RUN cp /root/.bashrc /home/dev
RUN cp /root/.gitconfig /home/dev
RUN cp -R /root/.scripts /home/dev

RUN chown dev:dev -R /home/dev

ENV HOME /home/dev

USER dev
WORKDIR /home/dev

CMD /bin/bash
