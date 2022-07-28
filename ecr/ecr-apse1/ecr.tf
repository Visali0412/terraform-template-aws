# Create ECR Repository
resource "aws_ecr_repository" "demo_repo" {
  name                 = "your-repository-name"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_lifecycle_policy" "demo-repo" {
  repository = aws_ecr_repository.demo-repo.name

  policy = file("./json-policies/expire-untagged.json")
}
