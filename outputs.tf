output "subnet_id" {
	value = [for i in aws_subnet.subnet : i.id]
}

output "subnet_cidr" {
	value = [for k in aws_subnet.subnet : k.cidr_block]
}
