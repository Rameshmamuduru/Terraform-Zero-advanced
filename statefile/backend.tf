terraform {
    backend "s3" {
        bucket         = "project-1-code-bucker"
        key            = "terraform_state/terraform.tfstate"
        region         = "us-east-1"
        encrypt        = true
    }
}
