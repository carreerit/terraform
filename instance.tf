provider "aws" {
  access_key = "AKIAIVENGEM7V2HDHTBQ"
  secret_key = "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"
  region     = "us-west-2"
}

resource "aws_instance" "web" {
  ami           = "ami-6df1e514"
  instance_type = "t2.micro"

  tags {
    Name = "SAMPLE1"
  }
}
