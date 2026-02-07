# 🚀 AWS Cloud Infrastructure Setup using Terraform

This repository demonstrates how to provision a complete AWS cloud infrastructure using Terraform (Infrastructure as Code). The project automates the creation of networking, compute, and security resources, and deploys a simple Nginx web application on EC2. This project is ideal for DevOps freshers to learn real-world cloud provisioning and automation practices.

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

## ☁️ Services and Tools Used

Amazon VPC, Public Subnet, Internet Gateway, Route Table, Security Groups, EC2 (Amazon Linux 2), Terraform (Infrastructure as Code), AWS CLI

---

## ✨ Features

- Automated infrastructure provisioning using Terraform  
- EC2 bootstrapped with Nginx using user-data  
- Secure access using Security Groups  
- Easy cleanup using terraform destroy  
- Reproducible infrastructure (create anytime, anywhere)

---

## ⚙️ Prerequisites

AWS account, Terraform installed, AWS CLI installed and configured, EC2 key pair created in AWS, Basic Linux knowledge

Verify tools:

terraform -version  
aws --version  
aws configure  

---

## 🛠 Setup & Deployment (Step-by-Step)

### 1 Clone the repository:
```bash 
git clone https://github.com/<your-username>/aws-terraform-infra.git  
cd aws-terraform-infra  
```
### Initialize Terraform:

### 2 terraform init  
```bash
Validate configuration:
```
### 3 terraform validate  
```bash
Review execution plan:
```
### 4 terraform plan  
```bash
Apply infrastructure:
```
### 5 terraform apply  
```bash
When prompted, enter your EC2 key pair name:

key_name = my-keypair  

Terraform will create: VPC, Public Subnet, Internet Gateway, Route Table, Security Group, EC2 instance with Nginx installed.
```
---

## 🌐 Access the Web Application
```bash
After successful deployment, Terraform will output the EC2 public IP.  
### Open in browser:

http://<EC2_PUBLIC_IP>
```
You should see the Nginx welcome page.

---

## 🧹 Cleanup (Avoid AWS Charges)
```bash
### terraform destroy  

This deletes all AWS resources created by Terraform.
```
---

## 📌 Interview Explanation (What this project does)

This project uses Terraform to automate the creation of AWS infrastructure instead of manually creating resources in the AWS Console. It sets up a VPC with a public subnet, attaches an Internet Gateway for internet access, configures routing, secures access using Security Groups, and deploys an EC2 instance with Nginx installed automatically using user-data. This approach ensures repeatable, version-controlled, and scalable infrastructure provisioning.

---

## 🎤 STAR Method (Interview Answer)

Situation: Manual infrastructure setup is slow and error-prone.  
Task: Automate AWS infrastructure provisioning in a repeatable way.  
Action: Used Terraform to create VPC, networking, security groups, and EC2 with Nginx using user-data.  
Result: Reduced setup time from manual steps to minutes and enabled reproducible infrastructure.

---

## 📄 License

MIT License
