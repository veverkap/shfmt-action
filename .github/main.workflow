workflow "Terraform" {
  resolves = "shfmt"
  on = "push"
}

action "shfmt" {
  uses = "veverkap/shfmt-action@master"
  secrets = ["GITHUB_TOKEN"]
  env = {
    TF_ACTION_WORKING_DIR = "."
  }
}
