kubectl create -f ./yaml/namespace-manifest.yaml

kubectl create -f ./yaml/redis_master/deployment-manifest.yaml
kubectl create -f ./yaml/redis_master/service-manifest.yaml
