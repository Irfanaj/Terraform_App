provider "aws" {
  region = var.aws_region
}

# Configure the S3 backend
terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-bcs"          # Replace with your S3 bucket name
    key            = "tf/statestop.tfstate"    # Path to the state file inside the bucket
    region         = "us-east-1"            # AWS region where the bucket is located
    encrypt        = true                   # Encrypt the state file
    dynamodb_table = "terraform-locks"     # Optional: DynamoDB table for state locking
  }
} 

data "aws_instance" "existing_instance" {
  instance_id = var.instance_id
}

resource "aws_ec2_instance_state" "existing_instance" {
  instance_id = data.aws_instance.existing_instance.id
  state       = "stopped"
  provisioner "local-exec" {
    command = "echo Instance stopped."
  }
}
