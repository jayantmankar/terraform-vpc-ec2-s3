
#data "aws_key_pair" "mykey" {
 # key_name           = "vpcdemo"
  #include_public_key = true
#}
data "aws_ami" "amazon_linux" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-*"]
  }
}
resource "aws_instance" "myec2" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instancetype
  count         = var.instancecount
  #key_name      = data.aws_key_pair.mykey.key_name

  tags = {
    Name = "Terrafor-${count.index + 1}"
  }
}