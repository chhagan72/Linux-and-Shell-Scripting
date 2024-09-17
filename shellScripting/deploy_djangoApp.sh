#!/bin/bash

<< task

Diploy the django App
and handle the code for errors

task


git_clone() {
	echo " cloning the django app code to git"
	git clone https://github.com/chhagan72/NoteApp.git


}

install_requirements(){
	echo " Installing dependecies"
	sudo apt-get install docker.io nginx -y docker-compose
}
required_restarts(){
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}
deploy(){
	docker build -t notes-app .
	docker run -d --name myapp -p 8000:8000 notes-app:latest
	#docker-compose up -d
}

echo "*************DEPLOYMENT STARTED****************"

if ! git_clone; then
	echo "The code directory already exists"
	cd NoteApp
fi

if ! install_requirements; then
	echo "Installation failed"
	exit 1
fi

if ! required_restarts; then
	echo "System fault identified"
	exit 1
fi

if ! deploy; then
	echo " Deployment failed, mailing the admin"
	# sendmail
	exit 1
fi

echo "*************DEPLOYMENT DONE****************"

 
