FROM ubuntu
LABEL author="Alexandre Walzberg <alexandre.walzberg@merapar.com>"

RUN apt-get update && apt-get install -y python-pip redis-tools curl wget iputils-ping && apt-get upgrade -y
RUN pip install --upgrade pip && pip install awscli --upgrade
RUN useradd -ms /bin/bash cbo
USER cbo
WORKDIR /home/cbo

CMD ["/bin/bash"]
