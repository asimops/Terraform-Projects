//This step will show what is the resource that I want to create
resource "aws_instance" "hello" {
    ami = var.ami_id
    instance_type = var.instance_type
}
