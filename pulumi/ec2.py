import pulumi
import pulumi_aws as aws

def create_ec2():
    # 1. VPC
    vpc = aws.ec2.Vpc("demo-vpc",
        cidr_block="11.0.0.0/16",
        enable_dns_hostnames=True,
        tags={"Name": "demo-vpc"})

    # 2. Subnet
    subnet = aws.ec2.Subnet("demo-subnet",
        cidr_block="11.0.1.0/24",
        vpc_id=vpc.id,
        availability_zone="ap-southeast-2a",
        tags={"Name": "demo-subnet"})

    # 3. Internet Gateway
    igw = aws.ec2.InternetGateway("demo-igw",
        vpc_id=vpc.id,
        tags={"Name": "demo-igw"})

    # 4. Route Table
    route_table = aws.ec2.RouteTable("demo-rt",
        vpc_id=vpc.id,
        routes=[{
            "cidr_block": "0.0.0.0/0",
            "gateway_id": igw.id,
        }],
        tags={"Name": "demo-rt"})

    aws.ec2.RouteTableAssociation("demo-rta",
        subnet_id=subnet.id,
        route_table_id=route_table.id)

    # 5. Security Group
    sg = aws.ec2.SecurityGroup("demo-sg",
        vpc_id=vpc.id,
        description="Allow SSH",
        ingress=[{
            "protocol": "tcp",
            "from_port": 22,
            "to_port": 22,
            "cidr_blocks": ["0.0.0.0/0"],
        }],
        egress=[{
            "protocol": "-1",
            "from_port": 0,
            "to_port": 0,
            "cidr_blocks": ["0.0.0.0/0"],
        }],
        tags={"Name": "demo-sg"})

    # 6. EC2 Instance
    instance = aws.ec2.Instance("demo-ec2",
        ami="ami-06a0b33485e9d1cf1",
        instance_type="t2.micro",
        subnet_id=subnet.id,
        vpc_security_group_ids=[sg.id],
        associate_public_ip_address=True,
        tags={"Name": "demo-instance"})

    pulumi.export("public_ip", instance.public_ip)
    return instance

