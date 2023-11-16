terraform {
  backend "s3" {
    bucket = "tf-eks-jenkin-cicd-bucket"
    region = "us-east-1"
    key = "eks/terraform.tfstate"
  }
}