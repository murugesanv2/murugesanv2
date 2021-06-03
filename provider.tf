terraform {
backend "s3" {
region = "us-east-1"
}

}

provider "aws" {
region = "us-east-1"
shared_credentials_file = "~/.aws/credentials"
profile = "hc-lab-tf"

}
