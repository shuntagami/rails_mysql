#! /bin/sh

# Wait for MySQS
until nc -z -v -w30 "mysql" 3306
do
  echo 'Waiting for mysql...'
  sleep 1
done
echo "mysql is up and running"
