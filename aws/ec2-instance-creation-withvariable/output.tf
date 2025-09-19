//This step will define an outpt variable which will show the output variable of the ec2 instance
output "public_ip" {
description = "Public IP address of the ec2 instance"
value = aws_instance.hello.public_ip
}
