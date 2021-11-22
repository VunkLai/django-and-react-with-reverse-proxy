#!/bin/sh

until cd /app
do
    echo "Waiting for server volume..."
    sleep 5
done

until ./manage.py migrate
do
    echo "Waiting for db to be ready..."
    sleep 5
done

./manage.py collectstatic --no-input

# SQLite doesn't support concurrency.
# gunicorn server.wsgi --bind 0.0.0.0:8000 --workers 4 --threads 4
gunicorn server.wsgi --bind 0.0.0.0:8000 --workers 1 --threads 1 --log-level debug
