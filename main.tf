module "ec2-docker-nginx-modules" {
  source  = "dialbak/ec2-docker-nginx-modules/aws"
  version = "1.0.0"
  # insert the 8 required variables here
  vpc_cidr_block      = "10.0.0.0/16"
  subnet_cidr_block   = "10.0.10.0/24"
  avail_zone          = "us-east-1a"
  env_prefix          = "dev"
  my_ip               = "109.22.155.55/32"
  instance_type       = "t2.micro"
  public_key_location = "/Users/bakarydiallo/.ssh/id_rsa.pub"
  image_name          = "amzn2-ami-hvm-*-x86_64-gp2"
}

output "ec2_public_ip" {
  value = module.ec2-docker-nginx-modules.ec2_public_ip
}

