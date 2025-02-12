# packer-project

1. Use Packer to create Wordpress Image. 

2. Then write Terraform code to create:
    1. VPC named “group-2”, 
    2. 3 public subnets, 
    3. route table, i
    4. nternet gateway, 
    5. subnet associations.
    6. Security Group named “group-2”. 
    7. Open required ports for your application.

3. EC2 instance named “group-2” with Wordpress ami image created earlier. 
    1. You should be able to ssh passwordless to EC2 instance from Bastion host.
