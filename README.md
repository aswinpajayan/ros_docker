# ros_docker
Install docker by visiting docs.docker.com


Copy dockerfile and launch file to a directory
On that directory open a terminal and build docker 

` docker build -t ros_gazebo . `

Launch the container using `./launch.sh`


Launch file binds the container file system to host 
file system using bind command and etc/passed file.
 All the users of the host system will be available
 in container as well
Use command `su - <username>` in the containers terminal 
before creating files so that the files will be created 
in users home directory in the host system


