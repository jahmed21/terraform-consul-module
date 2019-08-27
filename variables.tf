variable "platform" {
  default     = "ubuntu"
  description = "The OS Platform"
}

variable "user" {
  default = {
    ubuntu  = "ubuntu"
    rhel6   = "ec2-user"
    centos6 = "centos"
    centos7 = "centos"
    rhel7   = "ec2-user"
  }
}

variable "ami" {
  description = "AWS AMI Id, if you change, make sure it is compatible with instance type, not all AMIs allow all instance types "

  default = {
    eu-west-1            = "ami-ee0b0688
  }
}

variable "service_conf" {
  default = {
    ubuntu  = "debian_consul.service"
    rhel6   = "rhel_upstart.conf"
    centos6 = "rhel_upstart.conf"
    centos7 = "rhel_consul.service"
    rhel7   = "rhel_consul.service"
  }
}

variable "service_conf_dest" {
  default = {
    ubuntu  = "consul.service"
    rhel6   = "upstart.conf"
    centos6 = "upstart.conf"
    centos7 = "consul.service"
    rhel7   = "consul.service"
  }
}

variable "key_name" {
  description = "SSH key name in your AWS account for AWS instances."
}

variable "key_path" {
  description = "Path to the private key specified by key_name."
}

variable "region" {
  default     = "eu-west-1"
  description = "The region of AWS, for AMI lookups."
}

variable "servers" {
  default     = "3"
  description = "The number of Consul servers to launch."
}

variable "instance_type" {
  default     = "t2.micro"
  description = "AWS Instance type, if you change, make sure it is compatible with AMI, not all AMIs allow all instance types "
}

variable "tagName" {
  default     = "consul"
  description = "Name tag for the servers"
}

variable "subnets" {
  type = "map"
  description = "map of subnets to deploy your infrastructure in, must have as many keys as your server count (default 3), -var 'subnets={\"0\"=\"subnet-12345\",\"1\"=\"subnets-23456\"}' "
}

variable "vpc_id" {
  type = "string"
  description = "ID of the VPC to use - in case your account doesn't have default VPC"
}
