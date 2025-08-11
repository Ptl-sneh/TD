#!/bin/bash

# Create /data folder if it doesn't exist
mkdir -p /data

# Run Django migrations (will create the SQLite DB in /data/db.sqlite3)
python disaster_backend/manage.py migrate

# Collect static files
python disaster_backend/manage.py collectstatic --noinput

# Start Django server
python disaster_backend/manage.py runserver 0.0.0.0:$PORT
