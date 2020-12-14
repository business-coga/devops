docker build --no-cache -t hieuhv2/node-app .
docker push hieuhv2/node-app
kubectl delete deployment node-app

kubectl apply -f devops/deployment.mongo.yaml
kubectl apply -f devops/service.mongo.yaml
kubectl apply -f devops/deployment.app.yaml
kubectl apply -f devops/service.app.yaml

https://kubernetes.io/vi/docs/reference/kubectl/cheatsheet/