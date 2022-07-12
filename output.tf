
output "dev4_ip" {
  value= "${aws_instance.dev4.public_ip}"
}
output "dev5_ip" {
  value= "${aws_instance.dev5.public_ip}"
}