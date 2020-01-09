provider "aws" {
region = "us-east-2" 
}

data "aws_ami" "ubuntu" { 
most_recent = true 
owners = ["099720109477"]
}

#added spaces to correct
output "ami" { 
value = "${data.aws_ami.ubuntu.id}"
}