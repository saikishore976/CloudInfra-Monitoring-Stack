
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI (update as needed)
  instance_type = "t2.micro"
  key_name      = "your-key-name"

  tags = {
    Name = "StaticSiteServer"
  }
}
