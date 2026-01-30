#!/bin/bash
source /opt/venv/bin/activate

cd /code  # Changed from /app to match your Dockerfile.web WORKDIR

RUN_PORT=${PORT:-8000}
RUN_HOST=${HOST:-0.0.0.0}

gunicorn -k uvicorn.workers.UvicornWorker -b $RUN_HOST:$RUN_PORT main:app