variable "name" {
  description = "Name of the project this module belongs to."
  type        = "string"
}

variable "vcs_repo" {
  description = "Address of the version source control repository where the terraform stack is being checked in."
  type        = "string"
}
