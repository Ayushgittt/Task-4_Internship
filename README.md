# Task-4_Internship

# 🚀 Python Flask App Provisioned with Terraform & Docker

This project demonstrates how to **provision a local Docker container** running a simple Python Flask application using **Terraform** as Infrastructure as Code (IaC).

By leveraging Terraform's `docker` provider, we automate:
- Building a Docker image from a custom `Dockerfile`
- Running a container locally
- Managing infrastructure state safely

---

## 🧱 Project Stack

- **Terraform** – Used to define and provision Docker resources
- **Docker** – Containerizes and runs the Python app
- **Flask** – Serves a simple web endpoint on port `5000`

---

## ⚙️ Terraform Workflow

### 1. 🔧 Initialize Terraform
Run this to initialize the working directory and install the Docker provider:

```bash
terraform init
