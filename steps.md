# Hello World
`docker run hello-world` <br />
`docker run ubuntu echo "Ola Mundo"`

# List all containers
`docker ps -a`

# List all containers
`docker ps -a`

# Bash
`docker run -it ubuntu`

# List active containers
`docker ps`

# Start container
`docker start <ID>`

## Attach container
`docker start -a  -i <ID>`

# Stop container
`docker Stop <ID>`

# Remove container
`docker rm <ID>`

# Remove inative containers
`docker container prune`

# Remove Image
`docker rmi hello-world`

# Runing detached
`docker run -d <container>`

# Port
`docker run -d -P <container>` <br />
`docker run -d -p 12345:80 <container>` <br />
`docker port <ID>`

# Environment Variables
`docker run -d -P -e AUTHOR="Thiago Resende" <container>`

# Stop all
`docker ps -q` <br />
`docker stop -t 0 $(docker ps -q)`

# Volumes
`docker run -it -v "$(pwd)/vol/:/var/www/" ubuntu`

## Run
`touch tdfaf.txt`

# Ex1
`docker run -d -p 3000:3000 -v "$(pwd)/vol/:/var/www/" -w "/var/www" node npm start`

# Build Image
`docker build -t tresende/node .` <br />
`docker run -d -p 3000:3000 tresende/node`

# Network
`docker network ls` <br />
`docker network create --driver bridge minha-rede`

`apt-get update && apt-get install iputils-ping` <br />

`docker run -it --name meu-container-de-ubuntu --network minha-rede ubuntu` <br />
`docker run -it --name segundo-ubuntu --network minha-rede ubuntu`

# Docker Compose
    <img src='https://ibb.co/ki6Zoy'>
<br />
`docker-compose build` <br />
`docker-compose up` <br />
`docker-compose up -d` <br />
`docker-compose ps` <br />
`docker-compose dowb` <br />
