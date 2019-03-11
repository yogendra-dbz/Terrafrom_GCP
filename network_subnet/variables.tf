
/*
 ------- Google Cloud Project, Region, Network Details
*/

variable "project_id" {
    description = "Enter the project id"
    default = "my-first-project-id"
}

variable "second_project_id" {
    description = "Enter the project id"
    default = "my-second-project-id"
}

variable "region" {
    description = "Enter the region"
    default = "us-central1"
}

variable "compute-network" {
    description = "Network Name"
	default = "first-network"
}

variable "compute-network-region" {
    description = "Network Region"
	default = "us-central1"
}

variable "compute-second-network" {
    description = "Network Name"
	default = "second-network"
}

variable "compute-second-network-region" {
    description = "Network Region"
	default = "us-east1"
}