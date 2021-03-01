terraform {
  backend "gcs" {
    bucket = "backup-state-terraform"
    prefix = "terraform"
  }
}
