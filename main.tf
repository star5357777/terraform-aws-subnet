resource "aws_subnet" "subnet" {
	for_each = var.subnet
	vpc_id = var.vpc_id
	map_public_ip_on_launch = each.value.public_ip
	cidr_block = each.value.subnet_cidr
	availability_zone = each.value.az
	tags = {
		Name = each.value.subnet_name
	}
}
