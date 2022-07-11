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

resource "aws_security_group" "acesso-ssh-us-east-2" {
  name= "acesso-ssh"
  description = "acesso-ssh"
  provider = aws.us-east-2
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

