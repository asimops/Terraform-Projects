terraform {
  backend "s3" {
    bucket         = "asim-s3-bucket-statefile-store" # Replace with your S3 bucket name
    key            = "asim-s3-bucket-statefile-store/terraform.tfstate"   # Replace with the desired path and filename for your state file
    region         = "us-east-1"                       # Replace with your AWS region
    encrypt        = true                               # Enable server-side encryption for the state file
    #dynamodb_table = "your-terraform-lock-table"      # Optional: For state locking, replace with your DynamoDB table name
  }
}
