Exemplo de uso:

VPC e Subnet public e private

```
module "vpc_and_subnet" {
  source = "git::https://github.com/madson7/terraform-modules//modules/vpc_and_subnet_aws?ref=main"
  vpc_cidr_block = 
  subnet_public_cidr_block = 
  subnet_private_cidr_block = 
}
```