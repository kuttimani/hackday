# image version 0.1
IMAGE_VERSION=`grep -hnr "ENV" ./Dockerfile | cut -d'=' -f 2`
REPO=kuttimani
IMAGE_NAME=flaskdemo
docker build -t ${REPO}/${IMAGE_NAME}:${IMAGE_VERSION} .
echo "execute foll. command to push image to dockerhub repo: docker push ${REPO}/${IMAGE_NAME}:${IMAGE_VERSION}"
