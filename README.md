# kitchen-ec2 example 

### AWS KEY PAIR
- **Create a key pair in AWS console where you put your public key in order to be able to access and provision the VM**
  - create a pair of ssh keys (public and private) if you do not have with the following command `ssh keygen`
  - go to AWS console and create a new Key pair. There you upload your public key and set a name of the Key pair.
    Later you are going to use and assign this key pair to your VM so you can authenticate and connect remotely to it using
    your private SSH key. 
  - Use that name of the key pair for the parametar `aws_ssh_key_id: denislav`
### Prerequisites - run below commands in order to set up the environment needed for the testing part
- **Install kitchen and dependencies**
  -  brew install rbenv
  -  rbenv install 2.3.1
  -  install chefdk 2.5.3-1 version
  -  gem install ec2
  -  gem install bundler
  -  bundle install
  -  kitchen init --driver=kitchen-ec2 --crete-gemfile
  
  
- **Fork the repo and use this code as you should verify the values for all parameters:**
  - ami_id:
  - ..
  - region:
  - private ssh key
  
### Testing part:

- **When you have fullfilled all needed info do:**
  -  `kitchen list`

```
denislavdenov@Denislavs-MacBook-Pro kitchen-ec2 $ kitchen list
Instance             Driver  Provisioner  Verifier  Transport  Last Action    Last Error
default-ubuntu-1404  Ec2     ChefSolo     Busser    Ssh        <Not Created>  <None>
```

- run the test
  - `kitchen test`

### In this case kitchen is going to test if your AMI has NGINX package installed,if its service is installed,running and enabled, checks nginx version and some of its parameters.
