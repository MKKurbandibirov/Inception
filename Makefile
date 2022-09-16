all: up

up:
	mkdir -p /home/${USER}/data/db
	mkdir -p /home/${USER}/data/wp
	docker compose -f srcs/docker-compose.yml up

down:
	docker compose -f srcs/docker-compose.yml down

fclean: down
	
