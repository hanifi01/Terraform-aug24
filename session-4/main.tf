resource "aws_instance" "web" {
  ami                   = "ami-01816d07b1128cd2d"
  vpc_security_group_ids = [aws_security_group.web.id]
  instance_type         = var.instance_type

  tags = {
    Name = var.instance_name
    Env  = var.env
  }
}
resource "aws_security_group" "web" {
  name        = "MySG"
  description = "Session-3 SG"

  tags = {
    Name = "${var.SG_name}-${var.env}"
    Env  = var.env
  }
}


resource "aws_vpc_security_group_ingress_rule" "ssh_ingress" {
  security_group_id = aws_security_group.web.id
  cidr_ipv4         = "0.0.0.0/0" # Fixed the CIDR block
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_egress_rule" "allow_all_open" {
  security_group_id = aws_security_group.web.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

