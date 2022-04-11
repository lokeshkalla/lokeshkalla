provider "aws" {
    region = "us-east-1"
}
resource "aws_vpc" "myfirstvpc" {
    cidr_block   =  "192.168.0.0/16" 
    enable_dns_support = "true"
    enable_dns_hostnames = "true"
    tags = {
        name ="myfirstvpc"
    }
}
resource "aws_subnet" "web1" {
    vpc_id = aws_vpc.myfirstvpc.id
    cidr_block = "192.168.0.0/24"
    availability_zone = "us-east-1a"
    tags = { 
        name ="web1"
    } 
}
resource "aws_subnet" "web2" {
    vpc_id =aws_vpc.myfirstvpc.id
    cidr_block = "192.168.1.0/24"
    availability_zone = "us-east-1b"
    tags = {
      "name " = "web2"
    }
  
}