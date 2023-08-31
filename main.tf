# =============================
# aws ec2 test create
# ============================
resource "aws_instance" "test-ec2" {
  count                   = 1
  ami                     = "ami-01c46a8849f6b9217"
  instance_type           = "t3.small"
  key_name                = "sy_kim_keypair" 
  vpc_security_group_ids  = ["sg-0ac39a8cc3edfcd28"]
  associate_public_ip_address = true
  availability_zone = "ap-southeast-3a"
  subnet_id         = element(var.public-subnet,count.index)
  tags = {
    Name = "sy-kim-test-ec2"
  }
}