terraform {
  required_version = ">= 1.2"             ## 테라폼 버전
  required_providers {
    aws= {
      source  = "hashicorp/aws"
      version = "~> 4.0"                  ## 프로바이더 aws 버전
    }
  }  
  backend "s3" {
    bucket = "s3-sykim-ops"                       ## s3가 미리 생성되어 있어야 함
    region = "ap-southeast-3"                     ## s3 버킷이 있는 리전
    key    = "terraform/test/ec2.tfstate"         ## terraform apply하고 나서 저장되는 s3 경로
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}