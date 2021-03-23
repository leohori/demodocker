kubectl create -f ./yaml/namespace-manifest.yaml

kubectl create -f ./yaml/frontend/deployment-manifest.yaml
kubectl create -f ./yaml/frontend/service-manifest.yaml

kubectl create -f ./yaml/redis_master/deployment-manifest.yaml
kubectl create -f ./yaml/redis_master/service-manifest.yaml

kubectl create -f ./yaml/redis_slave/deployment-manifest.yaml
kubectl create -f ./yaml/redis_slave/service-manifest.yaml
