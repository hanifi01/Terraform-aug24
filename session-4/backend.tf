terraform {
  backend "s3" {
    bucket = "harris-1"
    key    = "classtasks/session-3/terraform.tftfstate"
    region = "us-east-1"
  }
}