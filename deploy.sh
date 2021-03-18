kubectl create -f ./yaml/namespace-manifest.yaml

kubectl create -f ./yaml/frontend/deployment-manifest.yaml
kubectl create -f ./yaml/frontend/service-manifest.yaml

kubectl create -f ./yaml/redis-master/deployment-manifest.yaml
kubectl create -f ./yaml/redis-master/service-manifest.yaml

kubectl create -f ./yaml/redis-slave/deployment-manifest.yaml
kubectl create -f ./yaml/redis-slave/service-manifest.yaml
