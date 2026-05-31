variable "my_bucket_name" {
  description = "The name of the S3 bucket to create"
  type        = string
  default     = "my-unique-xaviersavio-1978"
  
}

variable "cidr_ipv4" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "0.0.0.0/32"
}

variable "users" {
  description = "A list of users"
  type        = list
  default     = ["john", "satan", "maxiwell"]
}

