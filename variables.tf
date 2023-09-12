# Common Variables
variable "region" {
    description = "default region for resources"
    type = string  
}

variable "tags" {
    description = "Tags for resources"
    type = map(string)
}

variable "project" {
    description = "Project Name"
    type = string
}

variable "tier_name" {
    type = string

}

# Launch Template Variable
variable "instance_type" {
    description = "EC2 Instance Type"
    type = string
}

# variable "instance_count" {
#     description = "Number of instances to launch"
#     type = number
  
# }

variable "ami" {
    description = "EC2 AMI"
    type = string   
}

variable "key_name"{
    description = "Key Pair for EC2 Instances"
    type = string
}

variable "ec2_name" {
    description = "Name of EC2"
    type = string
}

variable "vpc_security_group_ids" {
    description = "instance security group id"
    type = list(string)
}


# variable "auto_assign_public_ip" {
#     description = "Assign Public IP when launching"
#     type = bool
  
# }

# variable "public_subnets" {
#     description = "Public Subnets ID"
#     type = list(string)
  
# }

variable "user_data" {
    description = "User data"
    type = string
  
}


#Auto-Scaling Group Variables
variable "min_size" {
    description = "Number of Minimum instances to run"
    type = number
  
}

variable "max_size" {
    description = "Number of Maximum sizes to scale to"
    type = number
  
}

variable "desired_size" {
    description = "Number of instances to run"
    type = number
  
}

variable "health_check_type" {
    description = "Type of Health Check i.e: EC2,ELB"
    type = string
  
}

variable "health_check_grace_period" {
    description = "specifies the amount of time, in seconds, that the ASG waits before it starts checking the health of newly launched instances."
    type = number
  
}

variable "vpc_zone_identifier" {
    description = "Subnet IDs for the AutoScaling Group"
    type = list(string)
  
}

variable "target_group_arns" {
    description = "Target Group ARN"
    type = string
  
}


