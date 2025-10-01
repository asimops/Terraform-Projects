provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "This is an ami"
}

variable "instance_type" {
    description = "This is the type of instance for exp:t2.micro"
  
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
}