# Project module

This module is used to setup some default values that will be passed and used by other modules belonging to the [PGBI
terraform registry](https://registry.terraform.io/modules/PGBI).

It does not create any resources by itself.

Usage:

```hcl
module "project" {
  source  = "PGBI/project/aws"
  version = "~>0.1.0"

  name     = "myProject"
  vcs_repo = "github.com/account/project"
}
```
