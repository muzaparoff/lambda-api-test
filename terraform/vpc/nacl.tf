resource "aws_network_acl" "nacl" {
  vpc_id = aws_vpc.my_vpc.id
  tags = var.nacl_tags
}

resource "aws_network_acl_rule" "ingress_rule" {
  count         = length(var.public_subnet_cidr_blocks)
  network_acl_id = aws_network_acl.nacl.id
  rule_number   = count.index * 100 + 100
  egress        = false
  protocol      = "tcp"
  rule_action   = "allow"
  cidr_block    = var.public_subnet_cidr_blocks[count.index]
  from_port     = 0
  to_port       = 65535
}

resource "aws_network_acl_rule" "egress_rule" {
  count         = length(var.public_subnet_cidr_blocks)
  network_acl_id = aws_network_acl.nacl.id
  rule_number   = count.index * 100 + 100
  egress        = true
  protocol      = "tcp"
  rule_action   = "allow"
  cidr_block    = var.public_subnet_cidr_blocks[count.index]
  from_port     = 0
  to_port       = 65535
}
