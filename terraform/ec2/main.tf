resource "aws_instance" "myec2" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    security_groups = aws_security_group.myec2sg.id

    tags = {
        name = "ec2_bhp"
    }

}

resource "aws_security_group" "myec2sg" {
    name = "all0w_all1"
    description = "Thi is the sg created by sai"

    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = "[0.0.0.0/0]"
    }

    tags = {
        name = "myec2sg_1"
    }
}










resource "aws_instance" "bhp_instance" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"

    tags = {
        Name = "bhp instance"
        Environment = "development"
    }
}

resource "aws_security_group" "allow_tls" {
    name = "allow_tls1"
    description = "This is the ec2 created in terraform"

    tags = {
        name = "first security group"
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}