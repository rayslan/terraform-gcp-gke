```
<!-- authorize access to Google Cloud Platform with a service account -->
gcloud auth activate-service-account SERVICE_ACCOUNT@DOMAIN.COM --key-file=/path/key.json --project=PROJECT_ID


<!-- enable Resource, Kubernetes, Compute, Container API -->
gcloud services enable cloudresourcemanager.googleapis.com
gcloud services enable compute.googleapis.com
gcloud services enable container.googleapis.com
gcloud services enable containerregistry.googleapis.com


<!-- set your project -->
gcloud config set project <your_project_id>



```