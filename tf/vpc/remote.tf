terraform {
  backend "s3" {
    bucket         = "tf101-ryan-apne2-tfstate"
    key            = "terraform/tf101/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}