terraform{
    cloud{
        organization = "terraform-cloud-orgaa"
        workspaces{
            name = "common"
        }
    }
}

resource "aws_s3_bucket" "main"{
    bucket_prefix = "migrate-me"
}

module "vpc-acg" {
  source  = "app.terraform.io/terraform-cloud-orgaa/vpc-acg/aws"
  version = "1.0.0"
}