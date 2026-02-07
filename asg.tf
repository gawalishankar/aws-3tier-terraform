resource "aws_launch_template" "web" {
  name_prefix   = "web-"
  image_id      = "ami-03ea746da1a2e36e7"
  instance_type = "t3.micro"
  key_name      = "terra-key"


  user_data = base64encode(<<EOF
  #!/bin/bash
  yum update -y
  amazon-linux-extras install nginx1 -y
  systemctl start nginx
  EOF
  )
  vpc_security_group_ids = [aws_security_group.app_sg.id]
}


resource "aws_autoscaling_group" "web_asg" {
  desired_capacity    = 2
  max_size            = 2
  min_size            = 1
  vpc_zone_identifier =  [
    aws_subnet.public_1.id,
    aws_subnet.public_2.id
  ]

  launch_template {
    id      = aws_launch_template.web.id
    version = "$Latest"
  }

}

// check script line-by-line 