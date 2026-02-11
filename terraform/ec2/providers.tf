terraform {
    required_providers {
        aws = {
            version = "hashicorp/aws"
            version = "6.31.0"
        }
    }
}

provider "aws" {
    region = "us-eat-1"
}