# kitchen-ec2 example 

1.   Create a key pair in AWS where you put your public key

1.1. Use that name for the parametar `aws_ssh_key_id: denislav`


2.1.  gem install aws-sdk

2.2.  gem install ec2

2.3.  kitchen init --driver=kitchen-ec2 --crete-gemfile

3.    Fork the repo and use this code as you should verify the values for all parametars : ami_id:, region:, etc
4.    When you have fullfilled all needed info do:

4.1.  `kitchen list`

```
denislavdenov@Denislavs-MacBook-Pro kitchen-ec2 $ kitchen list
Instance             Driver  Provisioner  Verifier  Transport  Last Action    Last Error
default-ubuntu-1404  Ec2     ChefSolo     Busser    Ssh        <Not Created>  <None>
```
4.2. `kitchen test`

# In this case kitchen is going to test if your AMI has NGINX installed
