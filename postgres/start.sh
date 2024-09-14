docker compose down
docker compose rm -f
docker compose up -d
docker exec -i postgres_db /bin/sh < ./restore.sh