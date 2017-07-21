provider "aws" {
  access_key = "${var.AWS_ACCESS_KEY}"
  secret_key = "${var.AWS_SECRET_KEY}"
  region     = "us-west-2"
}

resource "aws_instance" "web" {
  ami           = "ami-6df1e514"
  instance_type = "t2.micro"

  tags {
    Name = "SAMPLE1"
    ENV = "DEV"
    PURPOSE = "APP"
  }
}
