# Terraform Oracle VM
Terraform configuration to deploy a VM in the Oracle Cloud region `eu-frankfurt-1`.

# Prerequisites
1. [Install terraform](https://developer.hashicorp.com/terraform/downloads)
2. [Generate ssh keys](https://docs.oracle.com/en/cloud/cloud-at-customer/occ-get-started/generate-ssh-key-pair.html#GUID-8B9E7FCB-CEA3-4FB3-BF1A-FD3406A2432F) for your instance 
3. Use `terraform.tfvars` to [set the variables](https://developer.hashicorp.com/terraform/language/values/variables#variable-definitions-tfvars-files)

[Here](https://docs.oracle.com/en-us/iaas/developer-tutorials/tutorials/tf-compute/01-summary.htm) are a few hints how to gather the information for 3. Alternatively, start to create a compute instance, save it as stack and download the terraform configuration. Also see `terraform.tfvars.example` as an example for how your `terraform.tfvars` could look like.

## Usage
1. `terraform init`
2. `terraform apply` x 2
3. Use `oracle-vm-public-ip` from the outputs to log in: `ssh ubuntu@<oracle-vm-public-ip> -i <name-of-instance-private-key>`

## Background
Oracle cloud has some generous always-free eligible tier. For example, you can host an ARM Ubuntu machine with up to 24 GB RAM, 4 CPUs and 200 GB Volume within this tier. The downside is, that from time to time oracle claims the resources for paying customers and your machine is destroyed. By using IaC the goal is to quickly get your machine up and running again.

## TODO
- set default values for some variables
- turn into a module
- make more customizable