# ssh key_pair config
resource "aws_key_pair" "Admin" {
  key_name = "Admin"
  public_key = file("~/.ssh/key_pair/id_rsa.pub")
}

# ssh security policy config
resource "aws_security_group" "ssh"{
  name = "allow_ssh_from_all"
  description = "Allow SSH port from all"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# default aws security policy
data "aws_security_group" "default" {
  name = "default"
}

