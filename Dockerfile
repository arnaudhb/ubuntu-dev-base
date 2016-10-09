FROM arnaudhb/ubuntu

RUN apt-get update && apt-get install -y \
 sudo \
 x11-apps \
 && rm -rf /var/lib/apt/lists/*

CMD ["bash"]
