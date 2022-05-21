FROM python:3.7-buster

WORKDIR /usr/src/app

COPY . .

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs

RUN pip install -r requirements.txt

RUN chmod +x launch.sh

EXPOSE 5555

ENTRYPOINT ["sh", "launch.sh"]

CMD [ "5555" ]