provider "aws"{
    region=var.region
    shared_credentials_file="C:/Users/umaba/.aws/credentials"
}
resource "aws_s3_bucket" "uma94mybuckets3"{
bucket="uma94-s3-test-bucket"
acl="private"
tags={
    environment="Dev"
}
}
resource "aws_instance" "myfirstinstance"{
    ami=var.ami
    instance_type=var.instance_type
}