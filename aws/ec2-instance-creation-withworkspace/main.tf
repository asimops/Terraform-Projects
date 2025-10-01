provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "This is an ami"
}

variable "instance_type" {
  description = "This is the type of instance for exp: t2.micro"
  type        = map(string)

  default = {
    "dev" = "t2.micro"
    "stage" = "t2.medium"
    "prod" = "t2.large"
  }
}


module "ec2_instance" {
    source = "./modules/ec2_instance"
    ami = var.ami
    instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
}
