module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.18.0"

  name                = "my-security-group"
  vpc_id              = "vpc-05c07e7f"
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["https-443-tcp", "http-80-tcp", "ssh-tcp"]
}
