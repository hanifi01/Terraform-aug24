# provider "aws" {
#   region = "us-east-1"  
# }

# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.0"
#     }
#   }
# }

# Configure the AWS Provider
# provider "aws" {
#   region = "us-east-1"
# }

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.75.0"
    }
  }
}


# # Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  shared_credentials_files ="/Users/Harris/.aws/creds"
  profile = "default"
}



resource "aws_instance" "web" {
  ami           = "ami-01816d07b1128cd2d"  
  instance_type = "t2.micro"
}

  
#   }
  
#   user_data = <<-EOF
#     #!/bin/bash
#     yum update -y
#     yum install -y httpd
#     systemctl start httpd
#     systemctl enable httpd
#     echo "<html><body><h1>Session-2 homework is complete!</h1></body></html>" > /var/www/html/index.html
#   EOF
# }
18
