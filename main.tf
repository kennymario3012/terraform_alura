provider "aws" {
  #version = "~> 2.13.0"
  region = "us-east-1"
}


resource "aws_instance" "dev" {
  count = 3
  ami = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
  key_name = "terraform_aws"
  tags = {
    "Name" = "dev${count.index}"
  }
  vpc_security_group_ids = ["sg-06d346d91fcbb0c8d"]
}

resource "aws_security_group" "acesso-ssh" {
  name= "acesso-ssh"
  description = "acesso-ssh"
  
  ingress  {
    from_port = "22"
    to_port = "22"
    protocol = "tcp"

    cidr_blocks = ["197.216.105.46/32"]
  }
  tags = {
    Name="ssh"
  }

}
