
resource "aws_security_group" "allow_tls" {
  name        = "webserver-sg"
  description = "Allow TLS inbound traffic and all outbound traffic"

}