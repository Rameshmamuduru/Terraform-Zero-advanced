**what is module?**
  A module is basically a conatiner/block of reusable terraform infrastrcutre code. types odf modules we have

  | Module Type                     | Description                                                        | Example Use                                 |
| ------------------------------- | ------------------------------------------------------------------ | ------------------------------------------- |
| **Root module**                 | Your main Terraform directory where you run `terraform init/apply` | `main.tf`, `variables.tf`, `outputs.tf`     |
| **Child module / Local module** | Folder in your repo called from root module                        | `modules/vpc`, `modules/ec2`, `modules/rds` |
| **Registry / Remote module**    | Modules shared from Terraform Registry or GitHub                   | `terraform-aws-modules/vpc/aws`             |

**how to use module**
  1. call the module that you are going to use in you project.
      module "module_name" {
      source = "path_of_of_the_module"
     }
     and pass the values need to be pass in above code block only 
  2. Or you can create file called terraform.tfvars and pass the required values from this file and do apply the code. 
