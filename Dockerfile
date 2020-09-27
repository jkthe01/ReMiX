# We're using Ubuntu 20.10
FROM jkthe1/docker:groovy

#
# Clone repo and prepare working directory
#
RUN git clone -b jkthe1 https://github.com/jkthe1/ReMiX /root/userbot
RUN mkdir /root/userbot/.bin
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/jkthe1/ReMiX/jkthe1/requirements.txt

CMD ["python3","-m","userbot"]
