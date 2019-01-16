FROM python:2

ENV SLACK_TOKEN=${SLACK_TOKEN}

ADD election_reminder.py /election_reminder.py
ADD requirements.txt /requirements.txt

RUN pip install -r requirements.txt

CMD ["python", "/election_reminder.py"]
