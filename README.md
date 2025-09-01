# node

- Init

```bash
git init
git add .
git commit -m "init node"
git branch -M main
git remote add origin https://github.com/linjixing/node.git
git push -u origin main
```

- Clone

```bash
git clone https://github.com/linjixing/node.git
```

## Docker

### Variables

```bash
UNAME="linjixing"
PASSWD="password"
CONTAINER="node"
TAG="25.8.25"
HTTP_PORT="8080:8080"
TTYD_PORT="8081:8081"
```

### Build

```bash
docker build -t $CONTAINER:$TAG .
```

### Run as root

```bash
docker stop $CONTAINER && docker rm $CONTAINER && \
docker run -dit --name $CONTAINER -h $CONTAINER -e PASSWD=$PASSWD -p $HTTP_PORT -p $TTYD_PORT $CONTAINER:$TAG
```

### Run as UNAME

```bash
docker stop $CONTAINER && docker rm $CONTAINER && \
docker run -dit --name $CONTAINER -h $CONTAINER -e USER=$UNAME -e PASSWD=$PASSWD -p $HTTP_PORT -p $TTYD_PORT $CONTAINER:$TAG
```

### Exec

```bash
docker exec -it $CONTAINER bash
```

### Login to [Docker Hub](https://hub.docker.com/repository/docker/linjixing/node/tags)

```bash
docker logout
docker login -u $UNAME
```

### Push

```bash
docker tag $CONTAINER:$TAG $UNAME/$CONTAINER:$TAG
docker push $UNAME/$CONTAINER:$TAG

docker tag $CONTAINER:$TAG $UNAME/$CONTAINER:latest
docker push $UNAME/$CONTAINER:latest
```

### Pull

```bash
docker pull $UNAME/$CONTAINER
docker pull $UNAME/$CONTAINER:$TAG
```

## HTTP Service

- <http://localhost:8080>

## Web SSH Service [TTYD](http://localhost:8081)

> - Run as root
>
>   - user: **root**
>   - password: **$PASSWD**
>
> - Run as UNAME
>
>   - user: **$UNAME**
>   - password: **$PASSWD**
