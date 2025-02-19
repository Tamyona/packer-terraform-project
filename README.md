# packer-project

![Screen Shot 2025-02-19 at 10 33 52 PM](https://github.com/user-attachments/assets/dba28787-fd3a-4972-950d-ffd78d8e1f52)

## Use Packer to create Wordpress Image. Then write Terraform code to create an Instance.

Packer is
* Open-source tool made by Hashicorp. It is used for creating identical machine images for multiple platforms from single source configuration.
* Packer runs on every major operating system (AWS, GCP, Azure etc.) and creates machine images for multiple platforms in parallel.
* A common use is creating Golden Images to use in cloud infrastructure.

  
### Download Packer 
1. Offical website: Packer 
[
](https://developer.hashicorp.com/packer/install)

2. Package Manager:
  * Homebrew (macOS/Linux):nginx - brew install packer
  * APT (Ubuntu/Debian):arduino - sudo apt-get install packer
  * Chocolately (Windows):nginx - choco install packer

After installing, verify the installation by running: packer --version


#### Structure of Packer
1. Display the installed version of Packer
```
packer --version   
```
2. Initialize Packer configuration, downloading necessary plugins
```
packer init .
```
3. Validates the syntax and configuration of your Packer
```
packer validate .
```
4. Builds an image
```
packer build .
```
5. Shows infor about a template
```
packer inspect
```
#### Connection with Terraform
Steps:
1. VPC
2. Security group
3. EC2
4. AMI Filter

Bastion key:
```
Provide your ssh-key to the instance to access instance passwordless
```

Data
```
Provide path to create AMI
```

#### Conclution 
* Automation
* Fast Deployment
* Multi compability
  
   
#### References 
* Intro to Packer with AWS:
  https://www.youtube.com/watch?v=dde-bWUeRMo

* Packer Documentation:
  https://developer.hashicorp.com/packer/docs/intro



