resource "aws_instance" "web" {
  ami           = "ami-0715c1897453cabd1"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  #vpc_security_group_ids = [var.sg_id]
  vpc_security_group_ids = ["sg-07b33da015c4c8083"]

  tags = {
    Name = "HelloWorld"
  }
}

