terraform {
  cloud {
    organization = "FrancisE"

    workspaces {
      name = "my-example"
    }
  }
}
