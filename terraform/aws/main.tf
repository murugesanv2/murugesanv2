resource "aws_instance" "web" {
  ami           = "ami-0d5eff06f840b45e9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0f388076593fd159d"]
  subnet_id = "subnet-0afc7b8934331c3cf"
  tags = {
    Name = "HelloWorld"
  }
}
