    #!/bin/bash
    echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
    docker build . --tag pgr301 --build-arg JAR_FILE=./target/demo
    docker tag  pgr301  rahilvaseer/devops2020
    docker push rahilvaseer/devops2020