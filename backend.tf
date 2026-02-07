terraform {
  backend "s3" {
    bucket         = "my-terra-state-bucket99"
    key            = "3tier/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}