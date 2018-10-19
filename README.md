# kitchen-ec2 example 

- Create a key pair in AWS where you put your public key
  - Use that name for the parametar `aws_ssh_key_id: denislav`

- Install kitchen and dependencies
  -  gem install aws-sdk
  -  gem install ec2
  -  kitchen init --driver=kitchen-ec2 --crete-gemfile
  
- Fork the repo and use this code as you should verify the values for all parameters :
  - ami_id:
  - ..
  - region:

- When you have fullfilled all needed info do:
  -  `kitchen list`

```
denislavdenov@Denislavs-MacBook-Pro kitchen-ec2 $ kitchen list
Instance             Driver  Provisioner  Verifier  Transport  Last Action    Last Error
default-ubuntu-1404  Ec2     ChefSolo     Busser    Ssh        <Not Created>  <None>
```

- run the test
  - `kitchen test`

### In this case kitchen is going to test if your AMI has NGINX package installed,if its service is installed,running and enabled, checks nginx version and some of its parameters.
