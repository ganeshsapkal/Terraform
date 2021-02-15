module "ec2" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-ec2"
  instance_count         = 1

  ami                    = "ami-08e0ca9924195beba"
  instance_type          = "t2.micro"
  key_name               = "ganesh1"
  monitoring             = true
  vpc_security_group_ids = ["sg-f2d16391"]
  subnet_id              = "subnet-d8ce7ba3"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
