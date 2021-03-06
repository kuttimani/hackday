# image version 0.1
source ~/.bashrc &>/dev/null
IMAGE_VERSION=`grep -hnr "ENV" ./Dockerfile | cut -d'=' -f 2`
echo $IMAGE_VERSION > version.txt
REPO=kuttimani
IMAGE_NAME=flaskdemo
#docker build --no-cache -t ${REPO}/${IMAGE_NAME}:${IMAGE_VERSION} .
docker build -t ${REPO}/${IMAGE_NAME}:${IMAGE_VERSION} .
echo "execute foll. command to push image to dockerhub repo: docker push ${REPO}/${IMAGE_NAME}:${IMAGE_VERSION}"
docker push ${REPO}/${IMAGE_NAME}:${IMAGE_VERSION}

echo "########  deploying to kubernetes ########"
kubectl set image deployment/flask-deployment flask=kuttimani/flaskdemo:${IMAGE_VERSION} --record
