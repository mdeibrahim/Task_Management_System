#!/bin/bash

# Start Tailwind CSS in watch mode
npm run watch:tailwind &

# Start Django development server
python manage.py runserver

# When Django server is stopped, also stop Tailwind
trap "kill $(jobs -p)" EXIT 