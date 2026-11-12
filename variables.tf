variable "aws_region" {
  description = "aws provider region"
  type        = string
  default     = "ap-east-1"
}

variable "vpc_cidr" {
  description = "main vpc cidr block"
  type        = string
  default     = "192.168.0.0/16"
}

variable "public_subnet_cidr" {
  description = "public subnet cidr block"
  type        = string
  default     = "192.168.1.0/24"
}

variable "private_subnet_cidr" {
  description = "private subnet cidr block"
  type        = string
  default     = "192.168.2.0/24"
}

variable "subnets_az" {
  description = "main vpc subnets AZ"
  type        = string
  default     = "ap-east-1a"
}
