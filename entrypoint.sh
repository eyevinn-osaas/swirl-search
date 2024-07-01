#!/bin/bash

rm -rf ./.swirl && python swirl.py setup
python swirl.py start celery-worker celery-beats && daphne -b 0.0.0.0 -p 8080 swirl_sever.asgi:application
