# Live Person

## `first-assignment` named folder contains the code for the GKE assignment.
The folder is comprised on Terraform HCL code for:
* 1. Provisioning a basic GKE - the cluster, its node pool and the servcie account to be used by the node VMs.
* 2. Installing the official `Airflow` helm chart on the newely created GKE cluster.

Variables are defined in `variables.tf` named file, some of them have default values and hence you can not to touch them, while others don't have default values and hence you must pass them your custom values via: environmet variables, .tfvars extension file etc. 

(- I, personally, have also a `variables.auto.tfvars` named file in this folder {- you don't see it because it's defined in .gitignore not to be tracked by git,} for setting/overriding the values.)


## `second-assignment` named folder contains the code for the Compute Engine Instance Template assignment.
The folder is comprised on Ansible code for:
* 1. Provisioning a GCP compute engine instance template.
(- The main file of the task is second-assignment/roles/gcp-ansible/tasks/create.yml)
