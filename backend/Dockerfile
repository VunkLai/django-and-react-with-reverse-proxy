FROM python:3.8-alpine

WORKDIR /app
ADD ./requirements.txt .

# RUN pip install --upgrade pip
RUN pip install gunicorn
RUN pip install -r ./requirements.txt

ADD ./server/ .
ADD ./run.sh .
