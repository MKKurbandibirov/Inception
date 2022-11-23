
<h1 align="center">
🐳Inception
</h1>

### 🗝️ Original in [**Russian**](https://github.com/AYglazk0v/inception)

## 💡 About the project:

> _This project is about system administration and containerization._

	This project aims to expand your knowledge of system administration
	with Docker. You will virtualize multiple Docker images by creating them on a
	a new personal virtual machine.
	This project consists in the fact that you need to create a small infrastructure,
	consisting of different services according to certain rules:
	You must use docker-compose.
	Each Docker image must have the same name as its corresponding service.
	Each service must run in a separate container.
	For better performance, the containers should be built from either
	the pre-release stable version of Alpine Linux, or from Debian Buster. The choice is yours.
	You must also write your own Dockerfiles, one for each service.
	The Dockerfiles must be called in your docker-compose.yml by your Makefile.
	This means that you have to create your own Docker images of your project.
	It is then forbidden to use ready-made Docker images, as well as services such as
	DockerHub (Alpine/Debian is an exception to this rule).


Mandatory Part:
- Deploy Docker container containing NGINX with TLSv1.2 or TLSv1.3 only.
- Deploy Docker container containing WordPress + php-fpm (without NGINX).
- Deploy a Docker container containing MariaDB (without NGINX).
- Use two volumes for data storage: DB and WordPress files.
- Create a docker network between containers.
- Implement the interaction topology between the containers (see below).

<div id="topologiya" align="center">
  <img src="https://github.com/AYglazk0v/inception/blob/main/additionally/topologiya.png" width="400"/>
</div>

Bonus Part:
 * Set up a redis cache for your WordPress site to properly manage the cache.
 * Install an FTP server container pointing to the volume of your WordPress site.
 * Deploy a container with a simple static site in any language except PHP.
 * Set up adminer.
 * Deploy container with service of your choice.
	
More details about the project and the nuances can be found at  [**subject**](https://github.com/MKKurbandibirov/Inception/blob/main/Subject.pdf).

## 🛠 Testing and Usage:

	# Clone the project
	git clone git@github.com:AYglazk0v/inception.git && cd inception/

	# To test and build, run the command (assuming you have
	docker and docker-compose installed):
	make
	
	# In order to raise docker-compose and rebuild images if
	configuration changes have been made:
	make re
	
	# In order to turn off the containers:
	make down
	
	# To disable containers and clear the cache, use the command:
	make clean
	
	# In order to completely clear the system after testing:
	make fclean	
	

