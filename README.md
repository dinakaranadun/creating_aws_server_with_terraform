# creating_aws_instance _with_terraform and save terraform state in remote.

# 🛠 Terraform Remote Backend Setup Guide

This project uses an S3 bucket and DynamoDB table for Terraform's remote backend. Follow the steps below to configure and run your infrastructure setup.

---

## ✅ Step 1: Initial Setup (Create S3 + DynamoDB Locally)

Before using the remote backend, create the **S3 bucket** and **DynamoDB table** locally (without configuring the backend).

### 📌 Temporarily Comment Out the Backend in `main.tf`

```hcl
terraform {
  # backend "s3" {
  #   encrypt = true
  # }
  ...
}
```
🖥 Run Terraform Commands
```hcl
terraform init
terraform apply
```
✅ Step 2: Enable the Remote Backend

Once the S3 and DynamoDB resources exist, uncomment  backend block in main.tf:

📄 Edit Backend File and add your aws id

✅ Step 3: Re-Initialize Terraform with Remote Backend
```hcl
terraform init -backend-config=backend.conf
```
✅ Step 4: Run Your Project
```hcl
terraform apply
```

You can manually create the S3 bucket and DynamoDB table (via AWS Console, CLI, or CloudFormation) and add it to the backend file and skip the first 2 steps.

📦 Notes
Make sure regions are same on s3 and instance.















