//This step will show what is the resource that I want to create
resource "aws_instance" "hello-world" {
    ami = var.ami_id
    instance_type = var.instance_type
}

resource "aws_s3_bucket" "s3_bucket" {
     bucket = var.s3
}
