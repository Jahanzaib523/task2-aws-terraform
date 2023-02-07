resource "aws_elb" "ec2_ldb" {
    name = "ec2balancer"
    subnets = [aws_instance.web[1].subnet_id, aws_instance.web[0].subnet_id]

    listener {
        instance_port = 80
        instance_protocol = "http"
        lb_port = 80
        lb_protocol ="http"
    }

    instances  = [aws_instance.web[1].id, aws_instance.web[0].id]
}