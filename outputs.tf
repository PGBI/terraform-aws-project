output "name" {
  description = "Name of the project this module belongs to."
  value       = var.name
}

output "vcs_repo" {
  description = "Address of the version source control repository where the terraform stack is being checked in."
  value       = var.vcs_repo
}

output "tags" {
  description = "Default tags to apply to other aws resources."
  value = {
    managedBy     = "terraform"
    vcsRepository = var.vcs_repo
    projectName   = var.name
    workspace     = terraform.workspace
  }
}

output "name_prefix" {
  description = "Prefix that will be added to the name of any resources created using a PGBI terraform module."
  value       = terraform.workspace == "default" ? var.name : "${terraform.workspace}-${var.name}"
}
