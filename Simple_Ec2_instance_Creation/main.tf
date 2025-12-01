terraform {
  required_providers {
    aws = {

        source = "hashicorp/aws"
        version = ">= 5.92"

    }
  }
}

provider "aws" {

    region = "ap-south-1"
  
}

resource "aws_instance" "My-terraform-ec2" {
    ami = "ami-02b8269d5e85954ef"
    instance_type = "t3.micro"
    tags = {
        name = "My-terraform-ec2"
    }
}