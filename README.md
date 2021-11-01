```
<!-- authorize access to Google Cloud Platform with a service account -->
gcloud auth activate-service-account SERVICE_ACCOUNT@DOMAIN.COM --key-file=/path/key.json --project=PROJECT_ID


<!-- enable Kubernetes, Compute, Container API -->
gcloud services enable compute.googleapis.com
gcloud services enable container.googleapis.com
gcloud services enable containerregistry.googleapis.com





```