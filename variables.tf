variable "instance_type" {
    description = "type of an instance"
    default = "t2.micro"
}

variable region {
    description = "region of a running ec2 instance."
    default = "us-east-1"
}

variable "ami_num" {
    default = "ami-00874d747dde814fa"
}

variable "ami_number" {
    type = map
    description = "Ubuntu machine number"
    default = {
        us-east-1 = "ami-00874d747dde814fa"
    }
}

variable count_instances {
    description = "number of total instances."
    default = "2"
}