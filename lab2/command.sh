docker build -t hieuhv2/node-app .
docker push hieuhv2/node-app
kubectl apply -f devops/deployment-mongo.yaml
kubectl apply -f devops/service-mongo.yaml
kubectl apply -f devops/deployment-nodejs.yaml
kubectl apply -f devops/service-nodejs.yaml