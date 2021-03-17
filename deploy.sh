kubectl create -f ./guestbook/frontend/yaml/namespace-manifest.yaml

kubectl create -f ./guestbook/frontend/yaml/frontend/deployment-manifest.yaml
kubectl create -f ./guestbook/frontend/yaml/frontend/service-manifest.yaml

kubectl create -f ./guestbook/frontend/yaml/redis-master/deployment-manifest.yaml
kubectl create -f ./guestbook/frontend/yaml/redis-master/service-manifest.yaml

kubectl create -f ./guestbook/frontend/yaml/redis-slave/deployment-manifest.yaml
kubectl create -f ./guestbook/frontend/yaml/redis-slave/service-manifest.yaml
