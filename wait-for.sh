#!/bin/sh
# wait-for.sh

set -e

host="$1"
shift
cmd="$@"

until nc -z -v -w30 db 3306; do
  echo "Waiting for MySQL to be ready..."
  sleep 1
done

>&2 echo "MySQL is up - executing command"
exec $cmd
