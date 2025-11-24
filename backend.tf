terraform {
  backend "s3" {
    bucket = "test-one-new-7418596"
    key = "github_action/terraform.tfstate"
    region = "us-east-1"
    
  }
}