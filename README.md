# Dual-Stack VPCs

This module provisions dual-stack AWS VPCs. The intended purpose is to launch 
EC2 instances that can communicate over both IPv4 and IPv6.

TODO: Create a diagram visualizing the resources created
TODO: Show an example of using the ec2 Terraform module to launch instances

### Usage

Export your AWS Credentials as environment variables:

```bash
export AWS_ACCESS_KEY_ID="your_access_key_id"
export AWS_SECRET_ACCESS_KEY="your_secret_access_key"
export AWS_SESSION_TOKEN="your_session_token" # Optional, only needed if using temporary credentials
```

To create infrastructure using this module, run the following commands:

```bash
terraform init
terraform plan
terraform apply
```

### Cleanup

To destroy the infrastructure created by this module, run:

```bash
terraform destroy
```