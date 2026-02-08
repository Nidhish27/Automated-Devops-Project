resource "aws_instance" "k8s_master" {
  ami           = "ami-019715e0d74f695be"
  instance_type = "t3.micro"

  tags = {
    Name = "k8s-master"
  }
}
