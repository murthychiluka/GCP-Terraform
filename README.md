
########## GCLOUD CLI ############

```
winget install --id Google.CloudSDK --source winget
```
```
gcloud --version
```
```
gcloud init
```

after setup ypu can run below command 
```
gcloud config list
```
```
gcloud compute instances list  # list of compute engines 
```
Ex:
```
gcloud compute instances create ubuntu-free-tier --project=playground-s-11-3888d29f --zone=us-central1-a --machine-type=e2-micro --image-family=ubuntu-2204-lts --image-project=ubuntu-os-cloud --boot-disk-size=30GB --boot-disk-type=pd-standard --tags=http-server,https-server
```




########## Terraform ################
```
gcloud auth application-default login 
```
after run above json file will be created for terraform  

C:\Users\veera\AppData\Roaming\gcloud\application_default_credentials.json
```
terraform init 

terraform plan

terraform apply 
```
