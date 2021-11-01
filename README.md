```
<!-- Authorize access to Google Cloud Platform with a service account -->
gcloud auth activate-service-account SERVICE_ACCOUNT@DOMAIN.COM --key-file=/path/key.json --project=PROJECT_ID


<!-- Enable Resource, Kubernetes, Compute, Container API -->
gcloud services enable cloudresourcemanager.googleapis.com
gcloud services enable compute.googleapis.com
gcloud services enable container.googleapis.com
gcloud services enable containerregistry.googleapis.com


<!-- Set your project -->
gcloud config set project <your_project_id>


<!-- Add .tfvars -->

cluster-name = "rus-cluster"
project-id = "ynam-deneme"
gke-region = "us-west1"
node-count = 2
machine-type = "e2-medium"
node-disk-size = "12"
gke-zone       = "us-west1-a"



```