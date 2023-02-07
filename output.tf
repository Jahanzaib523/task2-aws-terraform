# OUTPUT
output "public_ip_instace1" {
  value = "${aws_instance.web.0.public_ip}"
}

# OUTPUT
output "public_ip_instace2" {
  value = "${aws_instance.web.1.public_ip}"
}