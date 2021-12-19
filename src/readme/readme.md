---
category: Guides
author: Sam Mohite
---
# Assignment

## Mini Kube

Write a simple hello world application in any one of these languages: Python, Ruby, Go. Build the application within a Docker container and then load balance the application within Minikube. You are not required to automate the installation of Minikube on the host machine.

## Approach

In order to keep the solution simple as possible, there were few assumptions made based on the requirements provided.

This solution uses :

1. Python
1. Flask webserver framework
1. Docker
1. Git 
1. Online MiniKube terminal 
1. Shell script
  
### Assumptions

1. Mini Kube is already set up and started. If not, one can use https://kubernetes.io/docs/tutorials/hello-minikube/ launching the terminal from the page
1. Git is enabled; if not one can use the source code attached.
1. Use Python image of your choice.
1. Use web server framework of your choice.

## Solution

Directory structure

```
assignment
|--src
|    |--app
|    |    |--app.py     # application
|    |    |--Dockerfile # Docker file
|    |--k8s 
|    |   |--rs.yaml     # replicaset
|    |   |--svc.yaml    # service
|    |--readme
|    |   |readme.md
|    |   |--images
|    |   |    *.png
|run.sh

```

![structure](./images/structure.PNG)

##  How to set up the app

This article shows how to set up the app using online terminal for MiniKube

1. Go to https://kubernetes.io/docs/tutorials/hello-minikube/ and launch Mini Kube terminal
   
![Launch Terminal](./images/launchterminal.PNG)

Wait till you see the message 'Kubernetes started'

![Kubernetes Started](./images/kubernetes-started.PNG)

Run command 

```

git clone https://github.com/Sampanna/assignment.git	

```
This will pull all the required files from GitHub. If you are not cloning the repo from GitHub, please use the source files provided and ensure the source code is made available within the environment as highighted in the directory structure(above)
 

## How to run the app

Once the code is available, navigate to 'assignment' directory. 

```
cd assignment

```
Once inside 'assignment' directory run 'run.sh' command as highlighted below

```
sh run.sh

```

---
**NOTE**

*run.sh* file contains a list of commands to create docker image, create replicaset and service required for the app to run. Once all the required components are in place, it then sends a http request using curl to get 'Hello World!' displayed on the console
---