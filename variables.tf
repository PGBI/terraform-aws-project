variable "name" {
  description = "The Project's name"
  type        = string
}

variable "vcs_repo" {
  description = "Address of the version source control repository where the terraform stack is being checked in."
  type        = string
}
