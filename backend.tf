terraform {
  cloud {
    organization = "pop-dev"

    workspaces {
      name = "fem-eci-tfe"
    }
  }
}
