 provider "aws" {
    region = "us-east-1"
 }

 resource "aws_instance" "web" {
    
    #creates 2 Ec2 instances
    count = var.count_instances

    ami = var.ami_num
    instance_type = "${var.instance_type}"

    #installing & starting the nginx server
    user_data = file("${path.module}/install_nginx.sh")
    vpc_security_group_ids = [aws_security_group.demo_sg.id]
  

    tags = {
        Name = "Task2 - ${count.index+1}"
    }
}
