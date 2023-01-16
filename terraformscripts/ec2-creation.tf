provider "aws"{
   region  = "ap-south-1" 
}

resource "aws_instance" "AWSEC2Instance"{
     count   = 1
     ami = "ami-0f9d9a251c1a44858"
     instance_type = "t2.micro"
     security_groups = ["launch-wizard-3"]
     key_name        = "devops"
     tags = {
        Name = "sonar"
     }
}

