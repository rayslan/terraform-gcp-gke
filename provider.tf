provider "google" {
  credentials = file("./service-account.json")
  project     = "rus-deneme-330723"
  region      = "us-west2"
#   zone        = "us-central1-c"
}