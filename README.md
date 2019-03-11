# Terrafrom_GCP
This following code will create the network in two different project, and then create the network, subnet, firewall in each respective project. then perform the vpc peering.

# Terraform SetUp

## Prerequisites

* Install Terraform  - <https://www.terraform.io/intro/getting-started/install.html>


## Prerequisites - Before executing terraform, packer templates
* Create service user in google cloud IAM.
* Add the service user in both projects and grant the editor permission.
* Download the credential file and save in project directory with "account.json"
* Update network_subnet/terraform.tfvars variable file
* Update vpc-peering/terraform.tfvars variable file.


### Run Terraform separately 

* **On Linux**
* terraform --version
* cd to <terraform templates path>
* terraform init
* terraform  plan                  # For validating & creating infrastructure virtually
* terraform apply --auto-approve   # For creating the infrastruture 
* terraform destroy --force        # For dispose the infrastructure created by terraform

### Run Terraform as a appliance
* chmod +x run.sh
* ./run.sh plan-network-vpc-peering
* ./run.sh create-network-vpc-peering
* ./run.sh destroy-network-vpc-peering


### References:
* https://www.terraform.io/
