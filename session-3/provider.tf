# provider "aws" {
#   region = "us-east-1"
#   shared_credentials_files ="/Users/Harris/.aws/creds"
#   profile = "default"
# }

provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["C:/Users/Harris/.aws/credentials"]
  profile                  = "default"
}






