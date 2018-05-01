# Hello World
`docker run hello-world`
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
`docker run -d -P <container>`
`docker run -d -p 12345:80 <container>`
`docker port <ID>`

# Environment Variables
`docker run -d -P -e AUTHOR="Thiago Resende" <container>`

# Stop all
`docker ps -q`
`docker stop -t 0 $(docker ps -q)`

# Volumes
`docker run -it -v "$(pwd)/vol/:/var/www/" ubuntu`
## Run
`touch tdfaf.txt`

# Ex1
`docker run -d -p 3000:3000 -v "$(pwd)/vol/:/var/www/" -w "/var/www" node npm start`