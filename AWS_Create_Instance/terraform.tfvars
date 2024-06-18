region           = "$var.avzone" # Replace with your desired AWS region
vpc_id           = "$var.vpc" # Replace with your VPC ID
subnet_id        = "$var.subnet" # Replace with your Subnet ID
key_name         = "$var.keypair" # Replace with your key pair name
ami_id           = "${tfamioutput.ami_id.value}" # Replace with your desired AMI ID
instance_type    = "$var.instance_type" # Replace with your desired instance type
disk_size        = $var.disksize # Replace with the desired OS disk size in GB
disk_type        = "$var.standard" # Replace with your desired disk type (gp2, io1, io2, sc1, st1)
security_group_id = "$var.sg_group" # Replace with your security group ID
instance_name    = "$var.instance_name"