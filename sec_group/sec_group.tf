resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh" 
  description = "Allow TLS inbound traffic" 
  vpc_id      = "vpc-02165d78" 

  ingress { 
    from_port   = 22
    to_port     = 22 
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]   

}
  ingress { 
    from_port   = 80
    to_port     = 80 
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]   

}
  ingress { 
    from_port   = 43
    to_port     = 443 
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]   

}
  ingress { 
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]   

}
}