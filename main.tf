resource "aws_launch_template" "aws_launch_template" {
    name = "${var.region}-${var.project}-launch-template"
    description = "Launch Template for ${var.project} auto scaling group"

    vpc_security_group_ids = var.vpc_security_group_ids
    image_id = var.ami
    
    instance_type = var.instance_type
    key_name = var.key_name

    user_data = filebase64(var.user_data)

    tags = merge(
    var.tags,
    {
        Name = var.ec2_name
    }
  )

  
}


resource "aws_autoscaling_group" "instance_auto_scaling_group" {
    name = "${var.region}-${var.project}-${var.tier_name}"

    vpc_zone_identifier = var.vpc_zone_identifier
    min_size = var.min_size
    max_size = var.max_size
    desired_capacity = var.desired_size
    health_check_grace_period = var.health_check_grace_period
    health_check_type = var.health_check_type

    target_group_arns = [var.target_group_arns]

    launch_template {
      id = aws_launch_template.aws_launch_template.id
    }
 
}

