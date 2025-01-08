variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "number_of_subnets" {
  description = "Number of subnets to create"
  type        = number
  default     = 3
}
