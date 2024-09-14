#!/bin/bash

# Wait until PostgreSQL is ready
until psql -U postgres; do
  echo "Waiting for PostgreSQL to start..."
  sleep 2
done

# Download and extract dvdrental
wget https://www.postgresqltutorial.com/wp-content/uploads/2019/05/dvdrental.zip
unzip -o dvdrental.zip

# Restore the database
pg_restore -U postgres -d dvdrental dvdrental.tar