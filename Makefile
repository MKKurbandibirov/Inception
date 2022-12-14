all: up

up:
	mkdir -p /home/${USER}/data/db
	mkdir -p /home/${USER}/data/wp
	docker compose -f srcs/docker-compose.yml up -d

down:
	docker compose -f srcs/docker-compose.yml down

ps:
	docker compose -f srcs/docker-compose.yml ps

fclean: down
	@docker image rm $$(docker image ls -q)
	docker system prune
	sudo rm -rf /home/${USER}/data

	
