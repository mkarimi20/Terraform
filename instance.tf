resource "aws_instance" "web" { 
  count = var.count_instance
  ami           = var.ami
  instance_type = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  key_name = aws_key_pair.deployer.key_name
  security_groups = ["allow_ssh"]
resource "aws_instance" "web" { 
  ami           = "AMI_ID_HERE" 
  instance_type = "t2.micro" 
  provisioner "remote-exec" { 
    connection { 
      host        = self.public_ip
      type        = "ssh" 
      user        = var.user
      private_key = file(var.ssh_key_location)
    } 
    inline = [ 
      "sudo yum install -y epel-release", 
       "sudo yum install httpd -y ",
       "systemctl start httpd"
    ] 

  } 
tags = { 
    Name = "HelloWorld" 
  } 
   lifecycle{
    prevent_destroy = false
  }
} 

