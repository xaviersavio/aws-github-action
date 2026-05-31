
resource "aws_security_group" "allow_tls1"{
  name        = "webserver-sg"
  description = "Allow TLS inbound traffic and all outbound traffic"

}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls1.id

  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
  cidr_ipv4         = var.cidr_ipv4
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_tls1.id
  cidr_ipv4         = var.cidr_ipv4
  ip_protocol       = "-1" # semantically equivalent to all ports
}

 resource "aws_instance" "example" {
   ami           = "ami-0d51758a4bd2afc6c" 
   instance_type = var.instance_type != "production" ? "t3.micro" : "t2.micro"

   tags = {
    Name = "example-instance"
   }
 }

# resource "aws_iam_user" "lb" {
#   name = var.users[count.index]
#   count = length(var.users)
# }