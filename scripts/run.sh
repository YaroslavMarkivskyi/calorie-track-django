#!/bin/sh

set -e

python << END
import sys
import time
import psycopg2
suggest_unrecoverable_after = 30
start = time.time()
while True:
  try:

    psycopg2.connect(
      dbname="devdb",
      user="devuser",
      password="changeme",
      host="db",
      port="5432",
    )
    break
  except psycopg2.OperationalError as error:
    sys.stderr.write("Waiting for PostgreSQL to become available...\n")
    if time.time() - start > suggest_unrecoverable_after:
      sys.stderr.write(" This is talking longer than expected. The following exception may be indicative of an uncoverable error: '{}'\n".format(error))
  time.sleep(1)
END
python manage.py collectstatic --noinput
python manage.py migrate

uwsgi --socket :9000 --workers 4 --master --enable-threads --module app.wsgi