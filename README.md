# AWS 3-Tier Architecture using Terraform

## 📌 Overview
This project demonstrates how to provision a **production-style 3-tier cloud architecture on AWS using Terraform (Infrastructure as Code)**.  
The infrastructure includes a public web tier behind an Application Load Balancer (ALB), a private application tier using EC2 Auto Scaling, and a private database tier using Amazon RDS (PostgreSQL).

The goal is to automate cloud infrastructure provisioning in a **repeatable, secure, and scalable** manner following real-world DevOps best practices.

---

## 🏗 Architecture Overview

Internet  
|  
[ Internet Gateway ]  
|  
[ Public Subnet ]  
|  
[ EC2 Instance (Nginx Web Server) ]

---


## Key Components
- VPC with public and private subnets  
- Internet Gateway  
- Security Groups (least-privilege access)  
- Application Load Balancer (ALB)  
- EC2 Launch Template + Auto Scaling Group  
- Amazon RDS (PostgreSQL)  
- Terraform Remote Backend (S3 + DynamoDB for state locking)

---

## ✨ Features

- Automated infrastructure provisioning using Terraform  
- EC2 bootstrapped with Nginx using user-data  
- Secure access using Security Groups  
- Easy cleanup using terraform destroy  
- Reproducible infrastructure (create anytime, anywhere)

---

## ⚙️ Prerequisites

- AWS account
- Terraform installed
- AWS CLI installed and configured
- EC2 key pair created in AWS
- Basic Linux knowledge

Verify tools:
```bash
terraform -version  
aws --version  
aws configure  
```
---

## 🛠 Setup & Deployment (Step-by-Step)

### 1 Clone the repository:
```bash 
git clone https://github.com/<your-username>/aws-terraform-infra.git  
```
cd aws-terraform-infra  

### 2 Initialize Terraform:
```bash
terraform init  
```
### 3 Validate configuration:
```bash
terraform validate  
```
### 4 Review execution plan:
```bash
terraform plan  
```
### 5 Apply infrastructure:
```bash
terraform apply  
```
### When prompted, enter your EC2 key pair name:
```bash
key_name = my-keypair  
```
Terraform will create: VPC, Public Subnet, Internet Gateway, Route Table, Security Group, EC2 instance with Nginx installed.

---
## 🌐 Access the Web Application
```bash
After successful deployment, Terraform will output the EC2 public IP.
``` 
### Open in browser:
```bash
http://<EC2_PUBLIC_IP>
```
You should see the Nginx welcome page.

---

## 🧹 Cleanup
```bash
terraform destroy  
```
This deletes all AWS resources created by Terraform.
---

📌 HOW IT WORKS END-TO-END

1. User → ALB

-     Client opens browser

2. ALB Routes → EC2

-     ALB sends HTTP to EC2

3. EC2 → Nginx

- Nginx serves HTML content

4. Data → S3

- Static assets can be stored here

5. IAM Role Enables Access

- EC2 can access S3 securely

## 📄 License

MIT License
