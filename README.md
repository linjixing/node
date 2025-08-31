# node

- Init

```bash
git init
git add .
git commit -m "$(date '+%Y.%m.%d')"
git branch -M main
git remote add origin https://github.com/linjixing/node.git
git push -u origin main
```

- Clone

```bash
git clone https://github.com/linjixing/node.git
```

## Docker

- Variables

```bash
CONTAINER="node"
TAG="25.8.25"
```

- Make

```bash
docker build -t $CONTAINER:$TAG .
```

- Run

```bash
docker stop $CONTAINER && docker rm $CONTAINER && \
docker run -dit --name $CONTAINER -h $CONTAINER $CONTAINER:$TAG
```

- Login

```bash
docker logout
docker login -u $UNAME
```

- Push

```bash
docker tag $CONTAINER:$TAG $UNAME/$CONTAINER:$TAG
docker push $UNAME/$CONTAINER:$TAG

docker tag $CONTAINER:$TAG $UNAME/$CONTAINER:latest
docker push $UNAME/$CONTAINER:latest
```

- Web SSH

    [TTYD](http://localhost:8081)
