
provider "aws" {
  region = "us-east-1"
  access_key = "AKIATAKPSTFDTEO2IRTF"
  secret_key = "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"
}

variable "instance_count" {
  default = "3"
}



        resource "aws_instance" "web" {
        count = "${var.instance_count}"
        ami = "ami-0226fdd5ec56ccb48"
        instance_type = "t2.micro"
        key_name  = "aws-anupam"
       # security_groups = [sg-0db038d2fa1948078]
}

