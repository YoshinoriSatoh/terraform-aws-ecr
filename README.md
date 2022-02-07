<!-- BEGIN_TF_DOCS -->
# Terraform AWS ECR Module

ECRリポジトリを作成します。

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 3.74.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.74.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecr_lifecycle_policy.repositories](https://registry.terraform.io/providers/hashicorp/aws/3.74.0/docs/resources/ecr_lifecycle_policy) | resource |
| [aws_ecr_repository.repositories](https://registry.terraform.io/providers/hashicorp/aws/3.74.0/docs/resources/ecr_repository) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/3.74.0/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/3.74.0/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_life_cycle"></a> [life\_cycle](#input\_life\_cycle) | n/a | <pre>object({<br>    prefix = string<br>    count = string<br>  })</pre> | n/a | yes |
| <a name="input_repositories"></a> [repositories](#input\_repositories) | n/a | `list(string)` | n/a | yes |
| <a name="input_tf"></a> [tf](#input\_tf) | n/a | <pre>object({<br>    name          = string<br>    shortname     = string<br>    env           = string<br>    fullname      = string<br>    fullshortname = string<br>  })</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->    