terraform{
    cloud{
        organization = "terraform-cloud-orgaa"
        workspaces{
            name = "common"
        }
    }
}

resource "random_pet" "vpc" {}
resource "random_pet" "s3" {}