#! /bin/sh
export C_FORCE_ROOT='true'
ps -ef | grep sjva.celery | awk '{print $1}' | xargs kill -9
#python -OO ./venv/bin/celery worker -A sjva.celery --loglevel=info
#nohup python -OO /usr/local/bin/celery -A sjva.celery flower --port=${CELERY_MONOTORING_PORT} &
python -OO /usr/local/bin/celery worker -A sjva.celery -c1 --loglevel=info
