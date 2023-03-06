FROM debian:stable

VOLUME [ "/usr/src/app/data", "/usr/src/app/config" ]

WORKDIR /usr/src/app

RUN apt-get update -y && apt-get install -y python3 python3-pip libgdbm-dev

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "get_favs.py", "-m", "-l", "43200" ]
