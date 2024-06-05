locals {
  project = {
    "fem-eci-project" = {
      description = "Example description of project"
    }
  }
  workspace = {
    "fem-eci-tfe" = {
      description         = "Example workspace description"
      execution_mode      = "remote"
      project_id          = module.project["fem-eci-project"].id
      vcs_repo_identifier = "jpopilek/fem-eci-terraform-tfe"
    }
  }
}
