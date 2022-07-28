# Setup AWS Region
variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "ap-southeast-1"
}
variable "repo_name" {
  type = string
  description = "repository name"
}
