resource "aws_instance" "my-private-web-subnet" {
  ami           = "ami-0ebfd941bbafe70c6"
  instance_type = "t2.micro"

  for_each = { for instance in local.ec2_name_dynamic : instance.name => instance }
  tags = {
    Name = each.value["name"]
  }
  key_name = aws_key_pair.ssh-ec2.id
  availability_zone = each.value["az_name"]
  subnet_id = each.value["subnet_name"] # subnet_id this attribute attach vpc to ec2
  vpc_security_group_ids = [aws_security_group.my-private-app-sg.id] # vpc_security_group_ids this attribute accepts list of SG 
  user_data = file("/home/rahul/Desktop/terraform/v3_project2/wordpress.sh")
}

resource "aws_key_pair" "ssh-ec2" {
  key_name   = "ssh-ec2"
  public_key = file("/home/rahul/Desktop/terraform/v3_project2/ec2-public.pub")
}