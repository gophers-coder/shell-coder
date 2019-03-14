FROM ubuntu:18.04
LABEL maintainer="XieWei(wuxiaoshen@shu.edu.cn)"

WORKDIR /home/src

COPY . .

RUN make

CMD ["bash", "-c", "/home/src/hello.sh"]
