variable "cidr_block" {

  type = string

  description = "CIDR block for VPC"

  default = "10.0.0.0/16"

}

variable "vpc_name" {

  type = string

  description = "VPC_Andrew"

}

variable "public_subnet_cidr_block" {

  type = string

  default = "10.0.1.0/24"

  description = "cidr range for public subnet"

}

variable "private_subnet_cidr_block" {

  type = string

  default = "10.0.2.0/24"

  description = "cidr range for private subnet"

}

variable "region" {

  type = string

  default = "us-east-1"

  description = "default region where infrastructures will be provisioned"
}

variable "availability_zone" {

  type = map(string)

  default = {
    private_subnet_az = "us-east-1b"
    public_subnet_az  = "us-east-1a"
  }

}

variable "ami_image" {

  type = string

  default = "ami-07d9b9ddc6cd8dd30"

}

variable "instance_type" {

  type = string

  default = "t2.micro"

}


