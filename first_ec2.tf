terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = $("ACCESS_KEY")
  secret_key = $("SECRET_KEY")

}

resource "aws_instance" "myec2" {
   ami = "ami-047a51fa27710816e"
   instance_type = "t2.micro"
}
