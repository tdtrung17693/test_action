terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "tdtshaus"

    workspaces {
      name = "Example-Workspace"
    }
  }
}

provider "aws" {
    profile = "default"
    region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-53f28d01"
  instance_type = "t2.micro"
}
