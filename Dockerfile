FROM alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk add py3-pip python3 openrc docker
RUN apk add --virtual build-dependencies python3-dev libffi-dev openssl-dev gcc libc-dev make
RUN pip3 install -i https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple/ docker-compose && apk del build-dependencies

RUN service docker restart
