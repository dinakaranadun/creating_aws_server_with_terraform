output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.app_server.id
}

output "instance_arn" {
  description = "ARN of the EC2 Instance"
  value       = aws_instance.app_server.arn
}

output "instance_name" {
  description = "Name tag of the instance"
  value       = aws_instance.app_server.tags["Name"]
}

output "public_ip" {
  description = "Public IP of the instance"
  value       = aws_instance.app_server.public_ip
}

output "private_ip" {
  description = "Private IP of the instance"
  value       = aws_instance.app_server.private_ip
}

output "public_dns" {
  description = "Public DNS name of the instance"
  value       = aws_instance.app_server.public_dns
}

output "availability_zone" {
  description = "Availability zone of the instance"
  value       = aws_instance.app_server.availability_zone
}

output "subnet_id" {
  description = "Subnet ID where the instance is launched"
  value       = aws_instance.app_server.subnet_id
}

output "vpc_security_group_ids" {
  description = "List of security group IDs assigned to the instance"
  value       = aws_instance.app_server.vpc_security_group_ids
}

output "ami_id_used" {
  description = "AMI ID used to launch the instance"
  value       = aws_instance.app_server.ami
}
output "s3_bucket_name" {
  value       = aws_s3_bucket.terraform_state.id
  description = "The NAME of the S3 bucket"
}

output "s3_bucket_arn" {
  value       = aws_s3_bucket.terraform_state.arn
  description = "The ARN of the S3 bucket"
}

output "s3_bucket_region" {
  value       = aws_s3_bucket.terraform_state.region
  description = "The REGION of the S3 bucket"
}

output "dynamodb_table_name" {
  value       = aws_dynamodb_table.terraform_lock.name
  description = "The ARN of the DynamoDB table"
}

output "dynamodb_table_arn" {
  value       = aws_dynamodb_table.terraform_lock.arn
  description = "The ARN of the DynamoDB table"
}
