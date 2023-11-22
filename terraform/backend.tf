terraform {
  backend "s3" {
    bucket = "tf-eks-jenkin-cicd-bucket"
    region = "ap-south-1"
    key = "eks/terraform.tfstate"
  }
}