# aws-terraform-concepts

Part 1: AWS Core Concepts

1. Amazon Web Services (AWS): Amazon Web Services (AWS) is the world's most comprehensive, broadly adopted, and secure cloud platform, offering over 200 fully-featured services from data centers globally. It provides on-demand IT resources—such as computing power, database storage, and content delivery—on a pay-as-you-go basis, allowing businesses to lower costs and scale infrastructure instantly.
  
2. IAM (Identity and Access Management): IAM is an AWS service used to manage access and permissions securely.
Users: Individual people or applications
Groups: Collection of users with similar permissions
Roles: Temporary permissions assigned to AWS services or users
Policies: JSON documents that define what actions are allowed or denied

3. Region & Availability Zone :
Region: A geographical location where AWS has data centers (e.g., ap-south-1 – Mumbai).
Availability Zone (AZ): One or more isolated data centers within a region (e.g., ap-south-1a, ap-south-1b).

4. EC2 (Elastic Compute Cloud) : EC2 is an AWS service that provides virtual servers called instances. These instances are used to run applications, websites, and backend services.

5. AMI (Amazon Machine Image) : An AMI is a template used to launch EC2 instances.
   
6. Instance Types : Instance types define the CPU, memory, storage, and network capacity of an EC2 instance.
Examples:
t2.micro – 1 vCPU, 1 GB RAM (Free Tier)
t3.micro – Burstable performance
m5.large – Balanced compute & memory

7. Key Pair : A Key Pair is used to securely connect to EC2 instances via SSH.
Public key is stored in AWS
Private key (.pem file) is downloaded by the user

8. Security Groups : Security Groups act as a virtual firewall for EC2 instances.
They control:
Inbound rules (incoming traffic)
Outbound rules (outgoing traffic)

9. VPC (Virtual Private Cloud) & Subnet
VPC: A logically isolated network in AWS where resources are launched.
Subnet: A smaller network inside a VPC.

Types of subnets:
Public Subnet – Has internet access
Private Subnet – No direct internet access

10. Public IP & Elastic IP
Public IP: Temporary IP assigned to EC2; changes on stop/start.
Elastic IP (EIP): Static, permanent public IP address.

Part 2: Launch EC2 Instance Manually
1. Login to AWS Console
2. Go to EC2 → Launch Instance
3. Configure:
Name: basic-ec2
AMI: ubuntu
Instance Type: t2.micro (Free Tier)
4. Key Pair
Create new key pair
Download .pem file
5. Network Settings
Allow SSH (22) from your IP
6. Click Launch Instance
7. Connect to EC2 using
   chmod 400 manual-key.pem
   ssh -i ec2-key.pem ec2-user@<PUBLIC_IP>

Part 3: Terraform

Terraform : Terraform is an Infrastructure as Code (IaC) tool developed by HashiCorp. It allows users to define and provision cloud infrastructure using code instead of manually creating resources
through the AWS Console. Terraform works with multiple cloud providers, making it cloud-agnostic.

Infrastructure as Code (IaC) : Infrastructure as Code means managing infrastructure (servers, networks, storage) using configuration files.

Terraform Workflow

Terraform follows a standard workflow to manage infrastructure.

1. terraform init
Initializes the Terraform project
Downloads required provider plugins
Prepares the working directory

2. terraform plan
Shows an execution plan
Displays what resources will be created, modified, or destroyed
Helps verify changes before applying

3. terraform apply
Creates or updates resources in the cloud
Asks for user confirmation before execution
Applies the planned changes

4. terraform destroy
Deletes all resources created by Terraform
Used to clean up infrastructure and avoid unnecessary costs






