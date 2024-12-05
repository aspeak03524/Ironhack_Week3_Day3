resource "aws_instance" "server" {
  count = length(var.ec2_name) # create four similar EC2 instances

  ami           = "ami-0035a5a4b40951ded" # pass a valid AMI image
  instance_type = var.instance_type

  tags = {
    Name = var.ec2_name[count.index]
  }
}