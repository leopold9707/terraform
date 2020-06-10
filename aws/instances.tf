resource "aws_instance" "Admin" {
  ami = "ami-0dbadd8c47cf535fd"
# Red Hat Enterprise Linux version 8 (HVM), EBS General Purpose (SSD) Volume Type
  instance_type = "t2.micro"
  key_name = aws_key_pair.Admin.key_name
  vpc_security_group_ids = [
    aws_security_group.ssh.id,
    data.aws_security_group.default.id
  ]
}
