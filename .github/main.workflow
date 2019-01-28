workflow "Terraform" {
  resolves = "shfmt"
  on = "push"
}

action "shfmt" {
  uses = "veverkap/shfmt-action@master"
  secrets = ["GITHUB_TOKEN"]
  env = {
    MY_NAME = "Mona"
  }
  args = "\"Hello world, I'm $MY_NAME!\""
}
