#!/bin/sh

if [ $# -eq 0 ]; then
   echo "No arguments provided"
   echo "Please choose from below option"
   echo "./run.sh plan-network-vpc-peering"
   echo "./run.sh create-network-vpc-peering"
   echo "./run.sh destroy-network-vpc-peering"
   exit 1
fi

case "$1" in
   "create-network-vpc-peering")
    cd network_subnet
    terraform init
    terraform apply --auto-approve
    cd ..
    cd vpc-peering
    terraform init
    terraform apply --auto-approve
    cd ..
   ;;
   "destroy-network-vpc-peering")
    cd vpc-peering
    terraform init
    terraform destroy --force
    cd ..
    cd network_subnet
    terraform init
    terraform destroy --force
    cd ..
   ;;
   "plan-network-vpc-peering")
    cd network_subnet
    terraform init
    terraform plan
    cd ..
    cd vpc-peering
    terraform init
    terraform plan
    cd ..
   ;;
   *) echo "Invalid Option"
   echo "Please choose from below option"
   echo "./run.sh plan-network-vpc-peering"
   echo "./run.sh create-network-vpc-peering"
   echo "./run.sh destroy-network-vpc-peering"
   ;;
esac
