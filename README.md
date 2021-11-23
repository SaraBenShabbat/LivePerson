# Live Person

## `first-assignment` named folder contains the code for the GKE assignment.
The folder is comprised on Terraform HCL code for:
* Provisioning a basic GKE - the cluster, its node pool and the servcie account to be used by the node VMs.
* Installing the official `Airflow` helm chart on the newely created GKE cluster.

Variables are defined in `variables.tf` named file, some of them have default values and hence you can not to touch them, while others don't have default values and hence you must pass them your custom values via: environmet variables, .tfvars extension file etc. 

Run it by using Terraform CLI -
For provisioning, type in the command line: `terraform apply --auto-approve`.<br/>
For destryoing, type in the command line: `terraform destroy --auto-approve`.

## `second-assignment` named folder contains the code for the Compute Engine Instance Template assignment.
The folder is comprised on Ansible code for:
* Provisioning and destroying a GCP compute engine instance template.

Run it by using Ansible CLI -
For provisioning, type in the command line: `ansible-playbook create.yml -u < username >`.<br/>
For destryoing, type in the command line: `ansible-playbook delete.yml -u < username >`.
