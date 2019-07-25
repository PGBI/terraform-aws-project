output "name" {
  description = "Name of the project this module belongs to."
  value       = var.name
}

output "region" {
  description = "Current AWS region."
  value       = data.aws_region.current.name
}

output "account_id" {
  description = "Current AWS account ID."
  value       = data.aws_caller_identity.current.account_id
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
    projectName     = var.name
    workspace     = terraform.workspace
  }
}
