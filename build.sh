# for development environment
minikube start
minikube start --vm=true
minikube addons enable ingress

# for public cloud environment
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

kubectl create namespace ingress-nginx
helm install ingress-nginx ingress-nginx/ingress-nginx -n ingress-nginx