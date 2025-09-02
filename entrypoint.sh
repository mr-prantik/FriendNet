#!/bin/sh
set -e

# Wait for DB then run migrations (retry until DB is up)
MAX_RETRIES=30
WAIT_SECONDS=2
i=0

until python manage.py migrate --noinput; do
  i=$((i+1))
  if [ $i -ge $MAX_RETRIES ]; then
    echo "Migrations failed after $MAX_RETRIES attempts."
    exit 1
  fi
  echo "Database unavailable - sleeping $WAIT_SECONDS seconds (attempt $i/$MAX_RETRIES)..."
  sleep $WAIT_SECONDS
done

# Ensure static files are collected (optional - safe to run)
python manage.py collectstatic --noinput

# Start Gunicorn
exec gunicorn friendnet.wsgi:application --bind 0.0.0.0:8000 --workers 3
