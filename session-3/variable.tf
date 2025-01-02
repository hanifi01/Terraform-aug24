variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "This is instance Type"
}

variable "instance_name" {
  type        = string
  default     = "My-webserver"
  description = "This is my webserver"
}

variable "SG_name" {
  type        = string
  default     = "MYSG"
  description = "This is my Security Group"
}

variable "env" {
  type        = string
  default     = "dev"
  description = "This is My Dev Environment"
}
