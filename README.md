# How to docker run

## Build the docker image

```
docker build . -t NotebookImage
```

## Run the docker container

Once the docker image is built, run this!

```
docker run -p 8888:8888 --name ContainerName NotebookImage
```

Explanations and code solutions are included in the jupyter notebook [here](https://github.com/stharajkiran/assessement/blob/main/assessment.ipynb) or **assessment**.ipynb above.
