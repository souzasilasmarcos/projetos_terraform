resource "aws_instance" "app_server" {
  ami           = "ami-0b6c2d49148000cd5"
  instance_type = "t2.nano"
}