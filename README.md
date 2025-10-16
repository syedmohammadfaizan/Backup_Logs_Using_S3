# 🗂️ File Backup System using AWS EC2, S3 & IAM

## 📘 Project Overview
This project demonstrates how to **automate file and log backups** from an **EC2 instance to an S3 bucket** using AWS services.  
It provides a secure, reliable, and automated backup solution — essential for system logs, configurations, and other critical data.

---

## 🏗️ Architecture
**AWS Services Used:**
- **EC2** → Generates or stores files/logs.  
- **S3** → Stores all backup data.  
- **IAM** → Manages permissions and ensures secure access.  

The EC2 instance runs a **Bash script** that uploads files to S3 automatically using the **AWS CLI** and a **cron job** for scheduling.

---

## ⚙️ Implementation Steps

### 1️⃣ Create IAM Role
- Go to **IAM → Roles → Create Role**  
- Select **EC2** as the trusted entity.  
- Attach policy: `AmazonS3FullAccess`  
- Name it: `EC2-S3-Backup-Role`

### 2️⃣ Launch EC2 Instance
- Choose **Amazon Linux 2**  
- Assign the IAM Role created above.  
- Connect to the instance via SSH.

Install AWS CLI:
```bash
sudo yum update -y
sudo yum install awscli -y
aws --version
