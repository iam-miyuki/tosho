help:
	echo "Cat this file..."
dev:
	docker compose -f docker-compose.yaml up --build
dev-d:
	docker compose -f docker-compose.yaml up app database mailer --build -d
prod:
	docker compose -f docker-compose.yaml up app database mailer nginx --build
prod-d:
	docker compose -f docker-compose.yaml up app database mailer nginx --build -d
down:
	docker compose -f docker-compose.yaml down
cache:
	docker exec -it tosho-app-1 php bin/console cache:clear