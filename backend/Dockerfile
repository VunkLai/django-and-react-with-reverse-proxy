FROM python:3.8-alpine

WORKDIR /app
ADD ./backend/requirements.txt .

# RUN pip install --upgrade pip
RUN pip install gunicorn
RUN pip isntall -r ./requirements.txt

ADD ./backend/server/ .
ADD ./run.sh .
