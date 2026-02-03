variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  default = "ec2-key"
}

variable "ami_id" {
  default = "ami-03bb6d83c60fc5f7c" # Ubuntu 22.04 LTS (ap-south-1)
}
