#!/bin/bash
python disaster_backend/manage.py migrate
python disaster_backend/manage.py collectstatic --noinput
python disaster_backend/manage.py runserver 0.0.0.0:10000