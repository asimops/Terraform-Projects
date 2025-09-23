//This step will show what is the resource that I want to create
resource "aws_instance" "hello-world" {
    ami = var.ami_id
    instance_type = var.instance_type
}

resource "aws_s3_bucket" "s3_bucket" {
     bucket = var.s3
}

//To lock the state file you have to create the dynamodb table and store with lockid. here table name is terraform-lock
resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
