variable "vpc_id" {
	type = string
}

variable "subnet" {
	type = map(object({
		public_ip = bool
		subnet_cidr = string
		az = string
		subnet_name = string
	}))
}
