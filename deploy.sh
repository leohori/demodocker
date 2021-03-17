kubectl create -f ./guestbook/yaml/namespace-manifest.yaml

kubectl create -f ./guestbook/yaml/frontend/deployment-manifest.yaml
kubectl create -f ./guestbook/yaml/frontend/service-manifest.yaml

kubectl create -f ./guestbook/yaml/redis-master/deployment-manifest.yaml
kubectl create -f ./guestbook/yaml/redis-master/service-manifest.yaml

kubectl create -f ./guestbook/yaml/redis-slave/deployment-manifest.yaml
kubectl create -f ./guestbook/yaml/redis-slave/service-manifest.yaml
