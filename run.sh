##git clone https://github.com/Sampanna/assignment.git	
## cd assignment

## Start the docker service
#sudo service docker start

## Build docker image
docker build -t hello_world ./src/app

## Create Kubernetes objects  
kubectl apply -f ./src/k8s/

# List pods and services
kubectl get pods
kubectl get services

sleep 10

## Get the IP for the service created
CLUSTER_IP=$(kubectl get svc helloworldservice -ojsonpath='{.spec.clusterIP}')

## Curl the service endpoint
curl http://$CLUSTER_IP:8080


curl http://helloworldservice:8080

