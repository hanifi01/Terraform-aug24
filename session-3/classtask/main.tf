resource "aws_security_group" "web" {
  name        = var.SG_name
  description = "Session-3 SG"

  tags = {
    Name = "${var.SG_name}-${var.env}"
    Env  = var.env
  }
}

resource "aws_instance" "web" {
  ami                   = "ami-01816d07b1128cd2d"
  vpc_security_group_ids = [aws_security_group.web.id]
  instance_type         = var.instance_type
  subnet_id             = data.aws_subnets.default.ids[0]  # Use the first subnet ID

  tags = {
    Name = var.instance_name
    Env  = var.env
  }
}

