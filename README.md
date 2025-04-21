# 🛠️ AWS Resource Tracker (Automated)

This project is a simple shell script that automates the process of tracking AWS resources such as:

- 🪣 S3 Buckets  
- 🖥️ EC2 Instances  
- 🌀 Lambda Functions  
- 👤 IAM Users  

It’s designed to run at scheduled intervals using `cron`, and logs the output to a `.log` file for review.

---

## 📁 Project Structure


---

## ⚙️ Setup Instructions

### 1. 📦 Prerequisites

Make sure your EC2 instance (or any Linux environment) has:

- ✅ AWS CLI installed
- ✅ `jq` installed (for parsing JSON)
- ✅ IAM role/credentials with permissions to list S3, EC2, Lambda, and IAM users
- ✅ Shell access

---

### 2. 🔐 AWS Credentials

Ensure your EC2 has access to AWS credentials. Either via:

- Instance Role (preferred for EC2)
- Or manual config:
```
  aws configure
```
###3🧪 Run Manually
```
./aws_resource_tracker.sh
```
###4.📅 Set Up Cron Job
```
crontab -e
```
```
35 9 * * * the path to your file  >> the path where you want to save the logs and error logs 2>&1
```
##note
1:2>&1 this means redirecting the error ouput also to the standard output.
2:Also you need to make sure you are redirecting the output to log file as crontab -e does not runs directly on your terminal.
