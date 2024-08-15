ToDo Application
Overview
This ToDo Application is built with Django and is containerized using Docker. Follow the instructions below to set up and run the application locally with Docker and deploy it to Kubernetes.

Prerequisites
Docker
Kubernetes (e.g., Minikube, GKE, EKS, AKS)
kubectl command-line tool
Docker Setup
Build and Run with Docker

Clone the repository:
git clone https://github.com/belleysatish/django-todo.git
cd django-todo


Build the Docker image:
docker build -t todo-app .

Run the Docker container:

docker run -p 8000:8000 todo-app

to manage kubernetes , go thorugh the cloud deployments repo https://github.com/belleysatish/cloud-deployments.git

Access the application at http://localhost:8000/.
