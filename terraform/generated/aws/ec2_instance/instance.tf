resource "aws_instance" "tfer--i-015de986d44279a73_ondemand-1" {
  ami                         = "ami-0b11739bb8b0b80bd"
  associate_public_ip_address = "false"
  availability_zone           = "ap-southeast-2a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdb"
    encrypted             = "true"
    iops                  = "3000"
    kms_key_id            = "arn:aws:kms:ap-southeast-2:439895746240:key/7442abf9-2590-4797-88b9-cd07b90866fe"

    tags = {
      CSIVolumeName                                    = "pvc-93e87a9d-d12d-4381-918c-ea2c1352980b"
      KubernetesCluster                                = "cgr-development-Xolrlr9P"
      Name                                             = "cgr-development-Xolrlr9P-dynamic-pvc-93e87a9d-d12d-4381-918c-ea2c1352980b"
      "ebs.csi.aws.com/cluster"                        = "true"
      "kubernetes.io/cluster/cgr-development-Xolrlr9P" = "owned"
      "kubernetes.io/created-for/pv/name"              = "pvc-93e87a9d-d12d-4381-918c-ea2c1352980b"
      "kubernetes.io/created-for/pvc/name"             = "data-vault-2"
      "kubernetes.io/created-for/pvc/namespace"        = "kube-system"
    }

    throughput  = "125"
    volume_size = "10"
    volume_type = "gp3"
  }

  ebs_optimized = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-ecc4b369-0d03-168b-911b-0484f4a66e4e"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.medium"
  ipv6_address_count                   = "0"

  launch_template {
    id      = "lt-0e6288619329df4ca"
    name    = "eks-ecc4b369-0d03-168b-911b-0484f4a66e4e"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "true"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "10.3.27.182"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "true"
    kms_key_id            = "arn:aws:kms:ap-southeast-2:439895746240:key/7442abf9-2590-4797-88b9-cd07b90866fe"

    tags = {
      Domain               = "corpgovrisk.net"
      Name                 = "ondemand-1"
      Ou                   = "clients"
      Provider             = "aws"
      Region               = "ap-southeast-2"
      "eks:cluster-name"   = "cgr-development-Xolrlr9P"
      "eks:nodegroup-name" = "ondemand-1-20230718022632172100000025"
    }

    volume_size = "20"
    volume_type = "gp2"
  }

  secondary_private_ips = ["10.3.14.121", "10.3.15.70", "10.3.17.211", "10.3.20.6", "10.3.3.122"]
  source_dest_check     = "true"
  subnet_id             = "subnet-08df8c88567b6a82d"

  tags = {
    Domain                                               = "corpgovrisk.net"
    Name                                                 = "ondemand-1"
    Ou                                                   = "clients"
    Provider                                             = "aws"
    Region                                               = "ap-southeast-2"
    "eks:cluster-name"                                   = "cgr-development-Xolrlr9P"
    "eks:nodegroup-name"                                 = "ondemand-1-20230718022632172100000025"
    "k8s.io/cluster-autoscaler/cgr-development-Xolrlr9P" = "owned"
    "k8s.io/cluster-autoscaler/enabled"                  = "true"
    "kubernetes.io/cluster/cgr-development-Xolrlr9P"     = "owned"
  }

  tags_all = {
    Domain                                               = "corpgovrisk.net"
    Name                                                 = "ondemand-1"
    Ou                                                   = "clients"
    Provider                                             = "aws"
    Region                                               = "ap-southeast-2"
    "eks:cluster-name"                                   = "cgr-development-Xolrlr9P"
    "eks:nodegroup-name"                                 = "ondemand-1-20230718022632172100000025"
    "k8s.io/cluster-autoscaler/cgr-development-Xolrlr9P" = "owned"
    "k8s.io/cluster-autoscaler/enabled"                  = "true"
    "kubernetes.io/cluster/cgr-development-Xolrlr9P"     = "owned"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU12YWtORFFXVmhaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmVrMUVZM2hQUkVGNVRXcFJlazlHYjFoRVZFMTZUVVJqZUU1VVFYbE5hbEY2VDBadmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJTbEo0Q2xoRlJrazFOMlJQVVdoaGFtNDVabXBQUVRsWGRVeFVOVUUwVnpFd1JqZEdhMXBWVEVwdVIyTmxaa05ZWmpSYWFUTjJWR3hsWlRRdmMxUmxVbWhtYVVZS1ZHVm5kVEZxUjJoQlFraFZaVTFKU2twVlQzTkpjM1ZUT0dGSVlWTnJXalJPVkc1bFRWRlhVRkZuTDFGRE1YRmtWR0pNTWt0dFJHSnlkRGc1TVZSQ05RcHhORW8wU0VadFJYSkhiRVJPV1RoQ015OUxSVzlrUTJzNWRVdGFObXRMVFhOdmFVOTVlV0puTW5SR01rTklaekkyVWxad09HOTFZVWxXT0dkRFlYRTRDbmM1VFhkYVdIcGFMMjlzWkZKc1ltbGplV3Q1VDFWTU9WbERaa1JsYTBkM2JGVlZSRmgzWVZWRllrazJSVXg2U1RWblZVVTJZMVI2TDFVMFRHTjVOazhLV1hCQlJVSXpjRGhMV2tSSlUyWnVSa2haTVc0NU1uWnpRM1oyVW0xU1FsaFhVV2xZWXpJclEyTTBRa0V2YUdwYVVuWkZTbU14U1hwTWVIWndia3hRZUFwbFdtbDVkbkJrUmxKRldXMUpZMVJYYkdoclEwRjNSVUZCWVU1YVRVWmpkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMGhSV1VSV1VqQlBRa0paUlVaQlIwOXFaMWhZWjJwVmVHaEZkRk4zTlRsemJsTjZNamRyZEZkTlFsVkhRVEZWWkVWUlVVOEtUVUY1UTBOdGRERlpiVlo1WW0xV01GcFlUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJSVTEzV0RReGRGWkhWbVo2TldoaGNYSklTUXB4TW0wclEyVklhMGxWUmtOWFZrWk1RVFpWZFdab05tcGFVVTR4VHpoWmVqUlNiSE00TVc1b1pFeG1MMlUxWWtWbk5FMU5WV0paVFZGeU1YSkRSelJGQ2xkWGFFZGhjMG92TlhwVFpsbGlOekpFWkV0RVRtUnJiek55VURkRlVtczFZbVZNVlZGMVpWTTBaVlpTWjJWUFNUQmFORWd5YlZvNGFUTnlXRGxLUWpFS05tMVRhMFZhV1Vkek1UQjFaWFY2Y1RSa1RXczJTM1JOZDJSNFFsaHBORFpRV2xNclNUVmpTRWROYWpkTE5TOXFiRWhhVFRodk4yVmlNRlZFVjFaTE13bzVWV2hCZWl0U09WbG9LMDlJZHk5VmNrczBRMnRyTW1rNVdVRnhla05WV0U5d2VIZFhlVlExS3pjeFFtZDRjRmxSUlc5bWVrOXdjbEo2VDJObVEyZHZDamRuU21KRlozQmpOVlpIYmpkQlJsRXdOMDh3ZVVSNVFreHRWVlZUYlV0cGEwdFdjbEZNZFZWVmJsSTFVRUpvVEZkeE1uUjJhMHR3ZVVJelYzbHhkM1VLYnpsRlBRb3RMUzB0TFVWT1JDQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENnPT0KQVBJX1NFUlZFUl9VUkw9aHR0cHM6Ly9BMjhFQUFEQUYzOTJCRkM5NzRGOUQwRERBOUZCMjE4Mi5ncjcuYXAtc291dGhlYXN0LTIuZWtzLmFtYXpvbmF3cy5jb20KSzhTX0NMVVNURVJfRE5TX0lQPTE3Mi4yMC4wLjEwCi9ldGMvZWtzL2Jvb3RzdHJhcC5zaCBjZ3ItZGV2ZWxvcG1lbnQtWG9scmxyOVAgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgJy0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vc291cmNlTGF1bmNoVGVtcGxhdGVWZXJzaW9uPTEsZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwLWltYWdlPWFtaS0wYjExNzM5YmI4YjBiODBiZCxla3MuYW1hem9uYXdzLmNvbS9jYXBhY2l0eVR5cGU9T05fREVNQU5ELGVrcy5hbWF6b25hd3MuY29tL25vZGVncm91cD1vbmRlbWFuZC0xLTIwMjMwNzE4MDIyNjMyMTcyMTAwMDAwMDI1LGVrcy5hbWF6b25hd3MuY29tL3NvdXJjZUxhdW5jaFRlbXBsYXRlSWQ9bHQtMDlkZjc5NTNjMjk0NWJiNjYgLS1tYXgtcG9kcz0xNycgLS1iNjQtY2x1c3Rlci1jYSAkQjY0X0NMVVNURVJfQ0EgLS1hcGlzZXJ2ZXItZW5kcG9pbnQgJEFQSV9TRVJWRVJfVVJMIC0tZG5zLWNsdXN0ZXItaXAgJEs4U19DTFVTVEVSX0ROU19JUCAtLXVzZS1tYXgtcG9kcyBmYWxzZQoKLS0vLy0t"
  vpc_security_group_ids = ["sg-0c353164fa2c6408d"]
}

resource "aws_instance" "tfer--i-0583b3daeac72eeb4_ondemand-3" {
  ami                         = "ami-0b11739bb8b0b80bd"
  associate_public_ip_address = "false"
  availability_zone           = "ap-southeast-2c"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdb"
    encrypted             = "true"
    iops                  = "3000"
    kms_key_id            = "arn:aws:kms:ap-southeast-2:439895746240:key/7442abf9-2590-4797-88b9-cd07b90866fe"

    tags = {
      CSIVolumeName                                    = "pvc-d5448150-ba43-4969-a874-2500133856fb"
      KubernetesCluster                                = "cgr-development-Xolrlr9P"
      Name                                             = "cgr-development-Xolrlr9P-dynamic-pvc-d5448150-ba43-4969-a874-2500133856fb"
      "ebs.csi.aws.com/cluster"                        = "true"
      "kubernetes.io/cluster/cgr-development-Xolrlr9P" = "owned"
      "kubernetes.io/created-for/pv/name"              = "pvc-d5448150-ba43-4969-a874-2500133856fb"
      "kubernetes.io/created-for/pvc/name"             = "data-vault-1"
      "kubernetes.io/created-for/pvc/namespace"        = "kube-system"
    }

    throughput  = "125"
    volume_size = "10"
    volume_type = "gp3"
  }

  ebs_optimized = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-7ac4b369-0cda-4d7c-c575-3504fd2559ca"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.medium"
  ipv6_address_count                   = "0"

  launch_template {
    id      = "lt-09b69ed1bee3b5212"
    name    = "eks-7ac4b369-0cda-4d7c-c575-3504fd2559ca"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "true"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "10.3.155.56"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "true"
    kms_key_id            = "arn:aws:kms:ap-southeast-2:439895746240:key/7442abf9-2590-4797-88b9-cd07b90866fe"

    tags = {
      Domain               = "corpgovrisk.net"
      Name                 = "ondemand-3"
      Ou                   = "clients"
      Provider             = "aws"
      Region               = "ap-southeast-2"
      "eks:cluster-name"   = "cgr-development-Xolrlr9P"
      "eks:nodegroup-name" = "ondemand-3-20230718022632172100000028"
    }

    volume_size = "20"
    volume_type = "gp2"
  }

  secondary_private_ips = ["10.3.131.10", "10.3.132.198", "10.3.139.121", "10.3.143.131", "10.3.148.80"]
  source_dest_check     = "true"
  subnet_id             = "subnet-01f424ee37d6d6551"

  tags = {
    Domain                                               = "corpgovrisk.net"
    Name                                                 = "ondemand-3"
    Ou                                                   = "clients"
    Provider                                             = "aws"
    Region                                               = "ap-southeast-2"
    "eks:cluster-name"                                   = "cgr-development-Xolrlr9P"
    "eks:nodegroup-name"                                 = "ondemand-3-20230718022632172100000028"
    "k8s.io/cluster-autoscaler/cgr-development-Xolrlr9P" = "owned"
    "k8s.io/cluster-autoscaler/enabled"                  = "true"
    "kubernetes.io/cluster/cgr-development-Xolrlr9P"     = "owned"
  }

  tags_all = {
    Domain                                               = "corpgovrisk.net"
    Name                                                 = "ondemand-3"
    Ou                                                   = "clients"
    Provider                                             = "aws"
    Region                                               = "ap-southeast-2"
    "eks:cluster-name"                                   = "cgr-development-Xolrlr9P"
    "eks:nodegroup-name"                                 = "ondemand-3-20230718022632172100000028"
    "k8s.io/cluster-autoscaler/cgr-development-Xolrlr9P" = "owned"
    "k8s.io/cluster-autoscaler/enabled"                  = "true"
    "kubernetes.io/cluster/cgr-development-Xolrlr9P"     = "owned"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU12YWtORFFXVmhaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmVrMUVZM2hQUkVGNVRXcFJlazlHYjFoRVZFMTZUVVJqZUU1VVFYbE5hbEY2VDBadmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJTbEo0Q2xoRlJrazFOMlJQVVdoaGFtNDVabXBQUVRsWGRVeFVOVUUwVnpFd1JqZEdhMXBWVEVwdVIyTmxaa05ZWmpSYWFUTjJWR3hsWlRRdmMxUmxVbWhtYVVZS1ZHVm5kVEZxUjJoQlFraFZaVTFKU2twVlQzTkpjM1ZUT0dGSVlWTnJXalJPVkc1bFRWRlhVRkZuTDFGRE1YRmtWR0pNTWt0dFJHSnlkRGc1TVZSQ05RcHhORW8wU0VadFJYSkhiRVJPV1RoQ015OUxSVzlrUTJzNWRVdGFObXRMVFhOdmFVOTVlV0puTW5SR01rTklaekkyVWxad09HOTFZVWxXT0dkRFlYRTRDbmM1VFhkYVdIcGFMMjlzWkZKc1ltbGplV3Q1VDFWTU9WbERaa1JsYTBkM2JGVlZSRmgzWVZWRllrazJSVXg2U1RWblZVVTJZMVI2TDFVMFRHTjVOazhLV1hCQlJVSXpjRGhMV2tSSlUyWnVSa2haTVc0NU1uWnpRM1oyVW0xU1FsaFhVV2xZWXpJclEyTTBRa0V2YUdwYVVuWkZTbU14U1hwTWVIWndia3hRZUFwbFdtbDVkbkJrUmxKRldXMUpZMVJYYkdoclEwRjNSVUZCWVU1YVRVWmpkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMGhSV1VSV1VqQlBRa0paUlVaQlIwOXFaMWhZWjJwVmVHaEZkRk4zTlRsemJsTjZNamRyZEZkTlFsVkhRVEZWWkVWUlVVOEtUVUY1UTBOdGRERlpiVlo1WW0xV01GcFlUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJSVTEzV0RReGRGWkhWbVo2TldoaGNYSklTUXB4TW0wclEyVklhMGxWUmtOWFZrWk1RVFpWZFdab05tcGFVVTR4VHpoWmVqUlNiSE00TVc1b1pFeG1MMlUxWWtWbk5FMU5WV0paVFZGeU1YSkRSelJGQ2xkWGFFZGhjMG92TlhwVFpsbGlOekpFWkV0RVRtUnJiek55VURkRlVtczFZbVZNVlZGMVpWTTBaVlpTWjJWUFNUQmFORWd5YlZvNGFUTnlXRGxLUWpFS05tMVRhMFZhV1Vkek1UQjFaWFY2Y1RSa1RXczJTM1JOZDJSNFFsaHBORFpRV2xNclNUVmpTRWROYWpkTE5TOXFiRWhhVFRodk4yVmlNRlZFVjFaTE13bzVWV2hCZWl0U09WbG9LMDlJZHk5VmNrczBRMnRyTW1rNVdVRnhla05WV0U5d2VIZFhlVlExS3pjeFFtZDRjRmxSUlc5bWVrOXdjbEo2VDJObVEyZHZDamRuU21KRlozQmpOVlpIYmpkQlJsRXdOMDh3ZVVSNVFreHRWVlZUYlV0cGEwdFdjbEZNZFZWVmJsSTFVRUpvVEZkeE1uUjJhMHR3ZVVJelYzbHhkM1VLYnpsRlBRb3RMUzB0TFVWT1JDQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENnPT0KQVBJX1NFUlZFUl9VUkw9aHR0cHM6Ly9BMjhFQUFEQUYzOTJCRkM5NzRGOUQwRERBOUZCMjE4Mi5ncjcuYXAtc291dGhlYXN0LTIuZWtzLmFtYXpvbmF3cy5jb20KSzhTX0NMVVNURVJfRE5TX0lQPTE3Mi4yMC4wLjEwCi9ldGMvZWtzL2Jvb3RzdHJhcC5zaCBjZ3ItZGV2ZWxvcG1lbnQtWG9scmxyOVAgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgJy0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vc291cmNlTGF1bmNoVGVtcGxhdGVWZXJzaW9uPTEsZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwLWltYWdlPWFtaS0wYjExNzM5YmI4YjBiODBiZCxla3MuYW1hem9uYXdzLmNvbS9jYXBhY2l0eVR5cGU9T05fREVNQU5ELGVrcy5hbWF6b25hd3MuY29tL25vZGVncm91cD1vbmRlbWFuZC0zLTIwMjMwNzE4MDIyNjMyMTcyMTAwMDAwMDI4LGVrcy5hbWF6b25hd3MuY29tL3NvdXJjZUxhdW5jaFRlbXBsYXRlSWQ9bHQtMGNhZWZiZDU0MDhiNGM1ZDAgLS1tYXgtcG9kcz0xNycgLS1iNjQtY2x1c3Rlci1jYSAkQjY0X0NMVVNURVJfQ0EgLS1hcGlzZXJ2ZXItZW5kcG9pbnQgJEFQSV9TRVJWRVJfVVJMIC0tZG5zLWNsdXN0ZXItaXAgJEs4U19DTFVTVEVSX0ROU19JUCAtLXVzZS1tYXgtcG9kcyBmYWxzZQoKLS0vLy0t"
  vpc_security_group_ids = ["sg-0c353164fa2c6408d"]
}

resource "aws_instance" "tfer--i-0760bc734d8a79d1a_fluentd01" {
  ami                         = "ami-0f158b0f26f18e619"
  associate_public_ip_address = "false"
  availability_zone           = "ap-southeast-2a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/sdh"
    encrypted             = "true"
    iops                  = "3000"
    kms_key_id            = "arn:aws:kms:ap-southeast-2:439895746240:key/7442abf9-2590-4797-88b9-cd07b90866fe"

    tags = {
      Domain            = "corpgovrisk.net"
      Name              = "fluentd01:/mnt/storage"
      Ou                = "clients"
      Provider          = "aws"
      Region            = "ap-southeast-2"
      "cgr:environment" = "development"
      "cgr:terraform"   = "true"
    }

    throughput  = "125"
    volume_size = "40"
    volume_type = "gp3"
  }

  ebs_optimized = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "ap-southeast-2_clients_fluentd"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.nano"
  ipv6_address_count                   = "0"
  key_name                             = "clients"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "10.3.2.35"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "true"
    iops                  = "3000"
    kms_key_id            = "arn:aws:kms:ap-southeast-2:439895746240:key/7442abf9-2590-4797-88b9-cd07b90866fe"

    tags = {
      Name = "fluentd01:/"
    }

    throughput  = "125"
    volume_size = "40"
    volume_type = "gp3"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-08df8c88567b6a82d"

  tags = {
    Domain            = "corpgovrisk.net"
    Name              = "fluentd01"
    Ou                = "clients"
    Provider          = "aws"
    Region            = "ap-southeast-2"
    ansible           = "true"
    availability_zone = "ap-southeast-2a"
    "cgr:environment" = "development"
    "cgr:terraform"   = "true"
    hostname          = "fluentd01.ap-southeast-2.development"
    internal_fqdn     = "fluentd01.int.ap-southeast-2.aws.clients.development.corpgovrisk.net"
    purpose           = "logging"
    software          = "fluentd"
  }

  tags_all = {
    Domain            = "corpgovrisk.net"
    Name              = "fluentd01"
    Ou                = "clients"
    Provider          = "aws"
    Region            = "ap-southeast-2"
    ansible           = "true"
    availability_zone = "ap-southeast-2a"
    "cgr:environment" = "development"
    "cgr:terraform"   = "true"
    hostname          = "fluentd01.ap-southeast-2.development"
    internal_fqdn     = "fluentd01.int.ap-southeast-2.aws.clients.development.corpgovrisk.net"
    purpose           = "logging"
    software          = "fluentd"
  }

  tenancy                = "default"
  user_data_base64       = "IyEvYmluL2Jhc2ggLXYKc2V0IC14CgojIGNyZWF0ZSBzd2FwCmZhbGxvY2F0ZSAtbCA0RyAvc3dhcGZpbGUKY2htb2QgNjAwIC9zd2FwZmlsZQpta3N3YXAgL3N3YXBmaWxlCnN3YXBvbiAvc3dhcGZpbGUKZWNobyAiL3N3YXBmaWxlIG5vbmUgc3dhcCBzdyAwIDAiID4+IC9ldGMvZnN0YWIKCndoaWxlIFsgISAtZSAvZGV2L252bWUxbjEgXTsKZG8KICBlY2hvICJXYWl0aW5nIDEwcyB0byBhbGxvdyBmb3IgZXh0ZXJuYWwgZGlzayB0byBhdHRhY2guIgogIHNsZWVwIDEwCmRvbmUKCiMgbW91bnQgZXh0ZXJuYWwgc3RvcmFnZQpta2ZzIC10IGV4dDQgL2Rldi9udm1lMW4xClVVSUQ9IiQoZmlsZSAtcyAvZGV2L252bWUxbjEgfCBjdXQgLWY4IC1kJyAnKSIKbWtkaXIgL21udC9zdG9yYWdlCmNwIC9ldGMvZnN0YWIgL2V0Yy9mc3RhYi5iYWNrdXAKZWNobyAiJHtVVUlEfSAvbW50L3N0b3JhZ2UgZXh0NCBkZWZhdWx0cyxub2ZhaWwgMCAyIiA+PiAvZXRjL2ZzdGFiCm1vdW50IC1hdgoKIyBzeW1saW5rIC9zcnYgd2l0aCAvbW50L3N0b3JhZ2UKIyBta2RpciAvbW50L3N0b3JhZ2Uvc3J2CiMgcm1kaXIgL3NydgojIHB1c2hkIC8KIyBsbiAtcyAvbW50L3N0b3JhZ2Uvc3J2CiMgcG9wZAoKIyB1cGRhdGVzIGFuZCBweXRob24KYXB0LWdldCB1cGRhdGUgXAogICYmIERFQklBTl9GUk9OVEVORD1ub25pbnRlcmFjdGl2ZSBhcHQtZ2V0IC15IC1vIERwa2c6Ok9wdGlvbnM6Oj0iLS1mb3JjZS1jb25mZGVmIiAtbyBEcGtnOjpPcHRpb25zOjo9Ii0tZm9yY2UtY29uZm9sZCIgZGlzdC11cGdyYWRlIFwKICAmJiByZWJvb3Qgbm93CiAgIyAmJiBhcHQtZ2V0IGluc3RhbGwgLXkgcHl0aG9uLW1pbmltYWwgcHl0aG9uLWFwdCBcCg=="
  vpc_security_group_ids = ["sg-0148d66ecca43ea21", "sg-044e76fde064de29f", "sg-0e8bf69ca40ab88be"]
}

resource "aws_instance" "tfer--i-0bbb32eebbbc741eb_ondemand-2" {
  ami                         = "ami-0b11739bb8b0b80bd"
  associate_public_ip_address = "false"
  availability_zone           = "ap-southeast-2b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"

  ebs_block_device {
    delete_on_termination = "false"
    device_name           = "/dev/xvdb"
    encrypted             = "true"
    iops                  = "3000"
    kms_key_id            = "arn:aws:kms:ap-southeast-2:439895746240:key/7442abf9-2590-4797-88b9-cd07b90866fe"

    tags = {
      CSIVolumeName                                    = "pvc-3d58afda-4d36-4728-9db9-00bc14404cdd"
      KubernetesCluster                                = "cgr-development-Xolrlr9P"
      Name                                             = "cgr-development-Xolrlr9P-dynamic-pvc-3d58afda-4d36-4728-9db9-00bc14404cdd"
      "ebs.csi.aws.com/cluster"                        = "true"
      "kubernetes.io/cluster/cgr-development-Xolrlr9P" = "owned"
      "kubernetes.io/created-for/pv/name"              = "pvc-3d58afda-4d36-4728-9db9-00bc14404cdd"
      "kubernetes.io/created-for/pvc/name"             = "data-vault-0"
      "kubernetes.io/created-for/pvc/namespace"        = "kube-system"
    }

    throughput  = "125"
    volume_size = "10"
    volume_type = "gp3"
  }

  ebs_optimized = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "eks-3cc4b369-0cdb-7788-ed1e-6f4a4d54d987"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.medium"
  ipv6_address_count                   = "0"

  launch_template {
    id      = "lt-0afdc84de94e3e26b"
    name    = "eks-3cc4b369-0cdb-7788-ed1e-6f4a4d54d987"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "true"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "10.3.66.5"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "true"
    kms_key_id            = "arn:aws:kms:ap-southeast-2:439895746240:key/7442abf9-2590-4797-88b9-cd07b90866fe"

    tags = {
      Domain               = "corpgovrisk.net"
      Name                 = "ondemand-2"
      Ou                   = "clients"
      Provider             = "aws"
      Region               = "ap-southeast-2"
      "eks:cluster-name"   = "cgr-development-Xolrlr9P"
      "eks:nodegroup-name" = "ondemand-2-20230718022632172100000027"
    }

    volume_size = "20"
    volume_type = "gp2"
  }

  secondary_private_ips = ["10.3.64.39", "10.3.74.87", "10.3.75.27", "10.3.79.90", "10.3.88.203"]
  source_dest_check     = "true"
  subnet_id             = "subnet-096440fbcb32cc3f4"

  tags = {
    Domain                                               = "corpgovrisk.net"
    Name                                                 = "ondemand-2"
    Ou                                                   = "clients"
    Provider                                             = "aws"
    Region                                               = "ap-southeast-2"
    "eks:cluster-name"                                   = "cgr-development-Xolrlr9P"
    "eks:nodegroup-name"                                 = "ondemand-2-20230718022632172100000027"
    "k8s.io/cluster-autoscaler/cgr-development-Xolrlr9P" = "owned"
    "k8s.io/cluster-autoscaler/enabled"                  = "true"
    "kubernetes.io/cluster/cgr-development-Xolrlr9P"     = "owned"
  }

  tags_all = {
    Domain                                               = "corpgovrisk.net"
    Name                                                 = "ondemand-2"
    Ou                                                   = "clients"
    Provider                                             = "aws"
    Region                                               = "ap-southeast-2"
    "eks:cluster-name"                                   = "cgr-development-Xolrlr9P"
    "eks:nodegroup-name"                                 = "ondemand-2-20230718022632172100000027"
    "k8s.io/cluster-autoscaler/cgr-development-Xolrlr9P" = "owned"
    "k8s.io/cluster-autoscaler/enabled"                  = "true"
    "kubernetes.io/cluster/cgr-development-Xolrlr9P"     = "owned"
  }

  tenancy                = "default"
  user_data_base64       = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU12YWtORFFXVmhaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmVrMUVZM2hQUkVGNVRXcFJlazlHYjFoRVZFMTZUVVJqZUU1VVFYbE5hbEY2VDBadmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJTbEo0Q2xoRlJrazFOMlJQVVdoaGFtNDVabXBQUVRsWGRVeFVOVUUwVnpFd1JqZEdhMXBWVEVwdVIyTmxaa05ZWmpSYWFUTjJWR3hsWlRRdmMxUmxVbWhtYVVZS1ZHVm5kVEZxUjJoQlFraFZaVTFKU2twVlQzTkpjM1ZUT0dGSVlWTnJXalJPVkc1bFRWRlhVRkZuTDFGRE1YRmtWR0pNTWt0dFJHSnlkRGc1TVZSQ05RcHhORW8wU0VadFJYSkhiRVJPV1RoQ015OUxSVzlrUTJzNWRVdGFObXRMVFhOdmFVOTVlV0puTW5SR01rTklaekkyVWxad09HOTFZVWxXT0dkRFlYRTRDbmM1VFhkYVdIcGFMMjlzWkZKc1ltbGplV3Q1VDFWTU9WbERaa1JsYTBkM2JGVlZSRmgzWVZWRllrazJSVXg2U1RWblZVVTJZMVI2TDFVMFRHTjVOazhLV1hCQlJVSXpjRGhMV2tSSlUyWnVSa2haTVc0NU1uWnpRM1oyVW0xU1FsaFhVV2xZWXpJclEyTTBRa0V2YUdwYVVuWkZTbU14U1hwTWVIWndia3hRZUFwbFdtbDVkbkJrUmxKRldXMUpZMVJYYkdoclEwRjNSVUZCWVU1YVRVWmpkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMGhSV1VSV1VqQlBRa0paUlVaQlIwOXFaMWhZWjJwVmVHaEZkRk4zTlRsemJsTjZNamRyZEZkTlFsVkhRVEZWWkVWUlVVOEtUVUY1UTBOdGRERlpiVlo1WW0xV01GcFlUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJSVTEzV0RReGRGWkhWbVo2TldoaGNYSklTUXB4TW0wclEyVklhMGxWUmtOWFZrWk1RVFpWZFdab05tcGFVVTR4VHpoWmVqUlNiSE00TVc1b1pFeG1MMlUxWWtWbk5FMU5WV0paVFZGeU1YSkRSelJGQ2xkWGFFZGhjMG92TlhwVFpsbGlOekpFWkV0RVRtUnJiek55VURkRlVtczFZbVZNVlZGMVpWTTBaVlpTWjJWUFNUQmFORWd5YlZvNGFUTnlXRGxLUWpFS05tMVRhMFZhV1Vkek1UQjFaWFY2Y1RSa1RXczJTM1JOZDJSNFFsaHBORFpRV2xNclNUVmpTRWROYWpkTE5TOXFiRWhhVFRodk4yVmlNRlZFVjFaTE13bzVWV2hCZWl0U09WbG9LMDlJZHk5VmNrczBRMnRyTW1rNVdVRnhla05WV0U5d2VIZFhlVlExS3pjeFFtZDRjRmxSUlc5bWVrOXdjbEo2VDJObVEyZHZDamRuU21KRlozQmpOVlpIYmpkQlJsRXdOMDh3ZVVSNVFreHRWVlZUYlV0cGEwdFdjbEZNZFZWVmJsSTFVRUpvVEZkeE1uUjJhMHR3ZVVJelYzbHhkM1VLYnpsRlBRb3RMUzB0TFVWT1JDQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENnPT0KQVBJX1NFUlZFUl9VUkw9aHR0cHM6Ly9BMjhFQUFEQUYzOTJCRkM5NzRGOUQwRERBOUZCMjE4Mi5ncjcuYXAtc291dGhlYXN0LTIuZWtzLmFtYXpvbmF3cy5jb20KSzhTX0NMVVNURVJfRE5TX0lQPTE3Mi4yMC4wLjEwCi9ldGMvZWtzL2Jvb3RzdHJhcC5zaCBjZ3ItZGV2ZWxvcG1lbnQtWG9scmxyOVAgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgJy0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vc291cmNlTGF1bmNoVGVtcGxhdGVWZXJzaW9uPTEsZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwLWltYWdlPWFtaS0wYjExNzM5YmI4YjBiODBiZCxla3MuYW1hem9uYXdzLmNvbS9jYXBhY2l0eVR5cGU9T05fREVNQU5ELGVrcy5hbWF6b25hd3MuY29tL25vZGVncm91cD1vbmRlbWFuZC0yLTIwMjMwNzE4MDIyNjMyMTcyMTAwMDAwMDI3LGVrcy5hbWF6b25hd3MuY29tL3NvdXJjZUxhdW5jaFRlbXBsYXRlSWQ9bHQtMGY0NDZmN2VmMmIzYmQ4OTQgLS1tYXgtcG9kcz0xNycgLS1iNjQtY2x1c3Rlci1jYSAkQjY0X0NMVVNURVJfQ0EgLS1hcGlzZXJ2ZXItZW5kcG9pbnQgJEFQSV9TRVJWRVJfVVJMIC0tZG5zLWNsdXN0ZXItaXAgJEs4U19DTFVTVEVSX0ROU19JUCAtLXVzZS1tYXgtcG9kcyBmYWxzZQoKLS0vLy0t"
  vpc_security_group_ids = ["sg-0c353164fa2c6408d"]
}
