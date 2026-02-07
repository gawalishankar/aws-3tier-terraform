variable "aws_region" {
  default = "us-east-2"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  description = "terra-key"
}

variable "db_username" {
  default = "terradb"
}

variable "db_password" {
  sensitive = true
}
