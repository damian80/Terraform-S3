# Terraform-S3
Automate S3 bucket creation with code (no manual clicks!)

Terraform S3 Bucket Project
This project demonstrates how to create an AWS S3 bucket using Terraform. It includes a simple configuration file (main.tf) that defines the provider and the S3 bucket resource.

Features
AWS Provider Configuration: Configures the AWS provider for the eu-west-2 (London) region.
S3 Bucket Deployment: Automatically creates a uniquely named S3 bucket.
Easy Deployment and Cleanup: Supports quick deployment with terraform apply and cleanup with terraform destroy.
Prerequisites

Terraform Installed: Ensure Terraform is installed on your system.
AWS Credentials Configured: Set up your AWS access key and secret access key in your environment.
How to Use

Create a Folder for the Project:
Open a terminal and create a project folder on your Desktop:

cd ~/Desktop
mkdir terraform-s3
cd terraform-s3

Create the Terraform Configuration File:
Create a file named main.tf inside the terraform-s3 folder:

touch main.tf

Open the file and add the following content:

provider "aws" {
  region = "eu-west-2"  # London region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "your-unique-bucket-name"  # Replace with a unique bucket name
}

Initialize Terraform:
Initialize the project by running:

terraform init
This downloads the necessary provider plugins.

Deploy the S3 Bucket:
Apply the configuration to create the S3 bucket:

terraform apply
Type yes when prompted to confirm.

Check Your S3 Bucket:

Log in to the AWS Management Console, navigate to the S3 service, and verify the bucket has been created.

Clean Up Resources:
To destroy the bucket and avoid costs:

terraform destroy
Type yes when prompted to confirm.

Note
This project is for educational purposes. Ensure to clean up resources (terraform destroy) after use to avoid incurring costs.

