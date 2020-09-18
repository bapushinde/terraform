terraform {
  backend "gcs" {
    bucket      = "practice-terraform-dev"
    prefix      = "state-19-sep"
    credentials = "~/practice/Terraform/molten-raceway-282113-a0de69550adb.json"
  }
}
