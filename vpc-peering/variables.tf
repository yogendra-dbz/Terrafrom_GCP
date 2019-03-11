

variable "project_id" {
    description = "Enter the project id"
    default = "my-second-project-id"

}

variable "region" {
    description = "Enter the region"
    default = "us-central1"
}


variable "first-network" {
    description = "Network Name"
    default = "my-first-network"
}

variable "second-network" {
    description = "Network Name"
    default = "my-second-network"
}


variable "first-peering-name" {
    description = "VPC peering name"
    default = "peering1"
}

variable "second-peering-name" {
    description = "VPC peering name"
    default = "peering2"
}

variable "project1-peering" {
    description = "Project1 name"
    
}

variable "project2-peering" {
    description = "Project2 name"
}

