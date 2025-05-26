import pulumi
import pulumi_aws as aws
from ec2 import create_ec2


# Create an EC2 instance

instance = create_ec2()


stack = pulumi.get_stack()
bucket_name = f"cgr-bucket-{stack}"

bucket = aws.s3.Bucket("my-bucket",
    bucket=bucket_name,
    tags={"env": stack}
)

