locals {
  project = {
    "fem-eci-project" = {
      description = "Example description of project"
    }
  }
  workspace = {
    "fem-eci-tfe" = {
      description    = "Example workspace description"
      execution_mode = "local"
      project_id     = module.project["fem-eci-project"].id
    }
  }
}
