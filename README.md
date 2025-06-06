# 🌐 Static Website Hosting on AWS S3 using Terraform

This project demonstrates how to **host a static website** on **Amazon S3** using **Terraform**—Infrastructure as Code (IaC). It provisions the necessary AWS resources, configures website hosting, grants public access, and automatically syncs your website files from a local directory.

---

## 📁 Project Structure

```
.
├── main.tf                    # Defines all AWS resources (S3 bucket, policies, ACLs)
├── providers.tf              # AWS provider and Terraform configuration
├── variables.tf              # Input variables
├── terraform.tfvars          # Values for the variables
├── outputs.tf                # Outputs for the deployed resources
└── website/                  # Folder with static website content
    ├── index.html
    └── error.html
```

---

## 🚀 Features

- 🔹 Creates an S3 bucket with versioned naming
- 🔹 Enables static website hosting with index & error pages
- 🔹 Configures public read access using ACLs and bucket policies
- 🔹 Automatically uploads local website files using AWS CLI
- 🔹 Outputs the website endpoint and bucket name

---

## ⚙️ Prerequisites

Before running this project, ensure you have:

- ✅ [Terraform](https://developer.hashicorp.com/terraform/downloads) installed
- ✅ [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) installed and configured (`aws configure`)
- ✅ An AWS account and proper credentials

---

## 📦 Setup Instructions

### 1. 📂 Clone the Repository

```bash
git clone <your-repo-url>
cd <project-directory>
```

---

### 2. 📝 Review and Edit `terraform.tfvars`

```hcl
region      = "us-east-1"
bucket_name = "nextwork-s3-website-using-terraform"
website_dir = "./website"
```

Make sure:
- The `region` matches your preferred AWS region
- The `bucket_name` is globally unique
- The `website_dir` points to your static content folder

---

### 3. 🛠️ Initialize Terraform

```bash
terraform init
```

This sets up the backend and installs the required providers.

---

### 4. 🔍 Preview the Execution Plan

```bash
terraform plan
```

You’ll see what Terraform intends to create or modify.

---

### 5. 🚀 Deploy the Infrastructure

```bash
terraform apply
```

Type `yes` when prompted. Terraform will:

- Create the S3 bucket
- Configure it for website hosting
- Set up access control and policies
- Sync your website files to the bucket

---

### 6. 🌐 Access Your Static Website

Once deployed, run:

```bash
terraform output website_endpoint
```

Then open the URL in your browser. Your static website should be live!

---

## 📤 Outputs

| Name             | Description                     |
|------------------|---------------------------------|
| `website_endpoint` | URL of the hosted static website |
| `bucket_name`      | Name of the S3 bucket created   |

---

## 🧾 AWS Resources Created

- `aws_s3_bucket`
- `aws_s3_bucket_website_configuration`
- `aws_s3_bucket_acl`
- `aws_s3_bucket_policy`
- `aws_s3_bucket_public_access_block`
- `aws_s3_bucket_ownership_controls`
- `null_resource` (local exec to sync files)

---

## 🛠 Tools & Services Used

- Terraform `v1.x`
- AWS S3
- AWS CLI
- HashiCorp Configuration Language (HCL)

---

## 🧠 Key Takeaways

- Infrastructure as Code (IaC) enables scalable, reproducible, and version-controlled deployments.
- Hosting static websites on S3 is cost-effective and fast.
- Terraform makes it easy to automate multi-resource setups across AWS.

---

## 🙌 Acknowledgements

Thanks to the **AWS** and **Terraform** communities for the incredible tooling and documentation that make projects like this possible.

---

## 📎 License

This project is open-source and available under the [MIT License](LICENSE).