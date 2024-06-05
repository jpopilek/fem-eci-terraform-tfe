# fem-eci-terraform-tfe

### Project structure

- main.tf - main file defining resources
- variables.tf - constants that are unchaning like project ids or keys
- backend.tf - sets up project to sync state with terraform cloud
- locals.tf - locals can be used to define resources that are then passed into main.tf's modules

### important terraform commands

Note using doppler to manage secrets and inject them into command execution

#### validate changes before pushing

`doppler run -- terraform plan -out "terraform.tfplan"`

#### validate syntax

`terraform validate`

#### init

`terraform init`

#### Apply

`doppler run -- terraform apply "terraform.tfplan"`

### Gotchas

in some instances you will need to "move a resource". This happens in particular when you get a warning something is to be destroyed you don't want post a change.
`ex.) moved { from =module.project to =module.project["fem-eci-project"]}`
