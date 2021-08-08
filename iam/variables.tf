# Define path to aws credentials file
variable "aws_credential_file" {
  type        = string
  description = "Path to aws credentials file"
  default     = "~/.aws/credentials"
}

# Define aws profile
variable "aws_credential_profile" {
  type        = string
  description = "AWS profile used for provision services"
  default     = "ludes-terraform-admin"
}

# Define Policy. Policy consist list of AWS managed polices
variable "ec2-admin-policy" {
  type        = list(string)
  description = "List of IAM policies"
  default     = [
                  "arn:aws:iam::aws:policy/AmazonEC2FullAccess",
                  "arn:aws:iam::aws:policy/AmazonS3FullAccess" 
                ]
}
