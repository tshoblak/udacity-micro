
[![CircleCI](https://circleci.com/gh/tshoblak/udacity-micro.svg?style=svg)](https://app.circleci.com/pipelines/github/tshoblak/udacity-micro)


## Project Overview

The project's goal is to operationalize a machine learning microservice using kubernetes. The service serves out predictions (inference) about housing prices through API calls. The model has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on.


### Install

- Docker
- Virtualbox

For Mac:

```
brew cask install virtualbox
```

- Minikube

```
brew cask install minikube
```

### Files explanation
- config.yml: CircleCI configuration file for running the tests
- app.py: Python flask app that serves out predictions (inference) about housing prices through API calls
- Dockerfile: Dockerfile for building the image
- make_prediction.sh: Send a request to the Python flask app to get a prediction, for localhost
- make_prediction2.sh: Send a request to the Python flask app to get a prediction, for minikube kubernetes
- Makefile: includes instructions on environment setup and lint tests
- run_docker.sh: file to be able to get Docker running, locally
- run_kubernetes.sh: file to run the app in kubernetes
- upload_docker.sh: file to upload the image to docker

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

#### Standalone:
`app.py` contains the web app built using flask framework.

`python app.py`

#### Run in Docker:  
`run_docker.sh` contains the script to run the app in the docker.

`./run_docker.sh`

#### Run in Kubernetes: 
`run_kubernetes.sh` contains the script to run app in the Kubernetes.

`./run_kubernetes.sh`

### Verify that application is running
`make_prediction.sh` contains the script to check the predictions.

`./make_prediction.sh`

### Upload to Docker Hub
`upload_docker.sh` contains the script to upload the docker image to the Docker Hub.

`./upload_docker.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

### Kubernetes Clean Up
- `kubectl delete deployment.apps/development`
- `kubectl delete svc development`