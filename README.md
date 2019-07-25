# Project module

This module is used to setup some default values that will be passed and used by other modules. It does not create
any resource by itself.

Usage:

```
module "project" {
  source  = "path//project"
  version = "~>0.1.0"

  name     = "myProject"
  vcs_repo = "github.com/account/project"
}
```
