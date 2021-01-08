FROM python:3.6.3

ENV SLACK_TOKEN="xoxb-77335436279-1431847376817-ImrCYcY3SRXQhIKwJ4Dvuuyl"

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

WORKDIR /persistence

COPY ./persistence.py /persistence.py
COPY ./persistence.py /persistence.py

CMD [ "python", "/persistence.py" ]
