
IMAGE=europe-west1-docker.pkg.dev/injenia-artifact/in-docker/argocd/app1-test
TAG=1.1.0

docker build -t $IMAGE:$TAG .
docker push $IMAGE:$TAG

argocd app set my-stg-helm-guestbook -p image1.tag=$TAG
argocd app set my-helm-guestbook -p image1.tag=$TAG