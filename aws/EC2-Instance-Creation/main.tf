//This step will validate whether terrraform has access to aws or not
provider "aws" {
    region = "us-east-1"
}

//This step will show what is the resource that I want to create
resource "aws_instance" "hello" {
    ami = "ami-0886832e6b5c3b9e2"
    instance_type = "t2.micro"
  
} 
