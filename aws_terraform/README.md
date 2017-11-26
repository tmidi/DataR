# terraform-aws-vpc

This project a (VPC) using Terraform.

## Configuration

Create `terraform.tfvars` and populate it with your AWS credentials:

```bash
$ mv terraform.tfvars.example terraform.tfvars
$ vim terraform.tfvars
```

`variables.tf` at this project root. It contains a listing of Terraform variables. Some defaults are set there as well. If you want to override any of them, override them in `terraform.tfvars`.

## Usage

All of the interactions with Terraform are wrapped in a `Makefile`. It contains targets for:
    - planning
    - applying
    - destroying changes to your AWS infrastructure.

### Variables
| Name| Default| Description | Required |
|:------------------------------|:---------------------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------:|
|region|us-east-1| AWS Region provider|   Yes    |
|azs|a,b and c in default region| Run instances in the provides zones|   Yes    |
|amazon_ami|ami-0987654|AWS AMI to use with instances|   Yes    |
||amazon_ami|Taleeb_Midi-Key|AWS key name to use for SSH|   Yes    ||ami-0987654|AWS AMI to use with instances|   Yes    |
|ssh_public_key|*public key*|AWS publicname to use for SSH|   Yes    |

### Howto

    git clone git@github.com:tmidi/DataR.git
    cd DataR/aws_terraform
    $EDITOR variable.tf
    terraform plan
    terraform apply
