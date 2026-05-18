# 1. Menentukan cloud provider yang dituju (AWS)
provider "aws" {
  region = "ap-southeast-1" # Wilayah Singapura (terdekat dari Indonesia)
}

# 2. Mendefinisikan resource server virtual (EC2 Instance)
resource "aws_instance" "uts_devops_server" {
  ami           = "ami-0c55b159cbfafe1f0" # Contoh ID blueprint OS Ubuntu Server
  instance_type = "t2.micro"             # Tipe spesifikasi server ekonomis (free-tier)

  tags = {
    Name        = "WebServer-UTS-DevOps"
    Environment = "Development"
    Owner       = "Setya-777"
  }
}