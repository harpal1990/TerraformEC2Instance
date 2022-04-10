resource "aws_instance" "terrainstance" {
  ami             = "${var.image_id}"
  instance_type   = "${var.instance_type}"
  count = 3
  key_name        = "terraform-key"
  security_groups = ["${aws_security_group.terrainstance.name}"]
  tags = {
    Name = "NginxWeb-${count.index}"
  }
  user_data = "${file("nginx.sh")}"
}
