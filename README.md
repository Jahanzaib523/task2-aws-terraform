#TASK

1- Create two EC2 in the AWS using Terraform

2- Install the Nginx on the created EC2 Instances

3- Replace the default nginx-website with the new-website

4- Add the Load balancer in front of the created EC2 Instances


# Install terraform
```
sudo snap install terraform --classic
```

# Commands to run terraform
```
terraform init
terraform validate
terraform plan
terraform apply 
```

# If you want resources to be auto-approved.
```
terraform apply --auto-approve 
```
