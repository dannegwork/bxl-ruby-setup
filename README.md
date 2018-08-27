## DOCKER SET-UP FOR RUBY SDK ##

The given docker setup is for running a ruby server.
The purpose is to be able to test the ruby SDK for the services Boxalino provides.

## Conditions ##
Move the code of the project into /srv/app folder


## INSTALLING DOCKER PROJECT ##

1. Migrate the code/app in srv/app path
Use either git or other tool you are most comfortable with
If you want to have the code directly in the srv path, please update the workpath used in the ruby Dockerfile (docker/ruby/Dockerfile)

2. Run the server
````bash
sudo docker-compose up server
````
This will call for all the gems to be installed
The Gemfile will be read
The server will be deployed

3. If you want to see the IP of the server, run the following command:
````bash
sudo docker inspect -f '{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(sudo docker ps -aq)
````

4. You can log in the ruby server by using the container ID
````bash
sudo docker-compose ps
sudo docker exec -it <containerID> /bin/bash
````