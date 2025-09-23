//This step will define an input variable of the instance type. here we are trying to parameterised.
variable instance_type {
    description = "This is ec2 instance type"
    type = string
}


//This step will define an input variable of the EC2 instance AMI ID
variable ami_id {
    description = "This is ec2 ami id"
    type = string
}


//This step will create a S3 bucket
variable s3 {
    description = "This is ec2 bucket"
    type = string
}
