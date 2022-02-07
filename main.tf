/**
 * # Terraform AWS ECR Module
 *
 * ECRリポジトリを作成します。
 */

data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

resource "aws_ecr_repository" "repositories" {
  for_each = toset(var.repositories)
  name     = each.key
  encryption_configuration {
    encryption_type = "KMS"
  }
  image_scanning_configuration {
    scan_on_push = true
  }
  image_tag_mutability = "IMMUTABLE"
}

resource "aws_ecr_lifecycle_policy" "repositories" {
  for_each = toset(var.repositories)
  depends_on = [
    aws_ecr_repository.repositories
  ]
  repository = each.key
  policy = jsonencode({
    rules: [
      {
        rulePriority: 1,
        description: "Keep last ${var.life_cycle.count} images",
        selection: {
          tagStatus: "tagged",
          tagPrefixList: [var.life_cycle.prefix],
          countType: "imageCountMoreThan",
          countNumber: var.life_cycle.count
        },
        action: {
          "type": "expire"
        }
      }
    ]
  })
}
