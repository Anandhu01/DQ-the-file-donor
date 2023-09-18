FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /DQTheFileDonor
WORKDIR /DQTheFileDonor
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
curl -X POST "https://api.cloudflare.com/client/v4/pages/webhooks/deploy_hooks/39c503cb-d7b9-422c-ad31-e61e8d4e3b24"
https://api.cloudflare.com/client/v4/pages/webhooks/deploy_hooks/39c503cb-d7b9-422c-ad31-e61e8d4e3b24
