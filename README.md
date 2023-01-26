## Terraform Samples for AWS

### VPC

#### Decription

VPC Name, CIDR Ranges, AZs are defined in variables.tf

#### Provisioned Resources

- 3 Private/Public Subnets in 3 different AZs
- 1 IGW and 1 NatGW in subnet1
- 2 Route Tables, 1 associated with IGW and 1 associated with NatGW

### TF Basic Commands

```bash
## format the syntax on tf files
$ terraform fmt
## When you create a new configuration — or check out an existing configuration from version control — you need to initialize the directory with terraform init.
$ terraform init
# plan to see what will be deployed
$ terraform plan
# deploy the resources => ENTER VALUE: yes
$ terraform apply
## inspect state of your AWS Resources
$ terraform show
$ terraform state list
# destroy the resources => ENTER VALUE: yes
$ terraform destroy
```

## YOUR VPC IS READY ! CHECK ON CONSOLE THE DETAILS

## ADD EC2 AS A RESOURCES

```bash
# COPY PASTE FROM PROVIDED EC2.TF TO THE END OF MAIN.TF ON CLOUD9

$ terraform validate
$ terraform plan -out ec2-instance
$ terraform apply -auto-approve ec2-instance
$ terraform show

```

## [Local Values](https://developer.hashicorp.com/terraform/language/values/locals)

-   Input variables are like function arguments.
-   Output values are like function return values.
-   Local values are like a function's temporary local variables.