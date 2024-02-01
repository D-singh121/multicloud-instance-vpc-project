resource "aws_vpc" "example_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "example-vpc"
  }
}

resource "aws_internet_gateway" "example_igw" {
  vpc_id = aws_vpc.example_vpc.id

  tags = {
    Name = "example-igw"
  }
}

resource "aws_subnet" "example_subnet" {
  vpc_id                  = aws_vpc.example_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "example-subnet"
  }
}

resource "aws_security_group" "example_security_group" {
  name        = "example-securitu-group"
  description = "my example security group"
  vpc_id      = aws_vpc.example_vpc.id

  ingress = [{
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
    description      = "Allow SSH access from anywhere"
  }]
}

resource "aws_key_pair" "example-key" {
  key_name   = "example-key-pair"
  public_key = file("~/.ssh/id_rsa.pub")

}
resource "aws_instance" "example_instance" {
  ami                    = "ami-0c7217cdde317cfec"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.example_subnet.id
  vpc_security_group_ids = [aws_security_group.example_security_group.id]
  key_name               = aws_key_pair.example-key.key_name
  tags = {
    Name = "example-instance"
  }

}
