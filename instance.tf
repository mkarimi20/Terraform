resource "aws_instance" "web" {
  count = var.count_instance
  ami             = var.ami
  instance_type   = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  key_name = aws_key_pair.deployer.key_name
  security_groups = ["allow_ssh"]
  provisioner "remote-exec" {
    connection {
      host        = self.public_ip
      type        = "ssh"
      user        = var.user
      private_key = file(var.ssh_key_location)
      }
      inline = [
        "sudo yum install -y epel-release",
        "sudo yum install httpd -y ",
        "sudo systemctl start httpd",
        "sudo systemctl enable httpd",
        "sudu yum install wget -y",
        "sudo wget https://wordpress.org/latest.tar.gz",
        "sudo tar -xzvf latest.tar.gz",
        "sudo rsync -avP ~/wordpress/ /var/www/html/",
        "sudo chown -R apache /var/www/html/wordpress"
        ]
  
  }
  lifecycle{
    prevent_destroy = false
  }
  tags = {
    Name = "HelloWorld"
  }
}


