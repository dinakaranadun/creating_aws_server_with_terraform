variable "region" {
  description = "AWS region for all resources"
  type        = string
  default     = "us-west-2"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-830c94e3"
}

variable "instance_name" {
  description = "Tag name for the EC2 instance"
  type        = string
  default     = "AppServerInstance"
}
