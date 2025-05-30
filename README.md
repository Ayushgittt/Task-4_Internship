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


![1](https://github.com/user-attachments/assets/64f17e34-3763-4c1a-9098-9c600faf7adc)


### 2. 🔍 Preview Terraform Plan
This shows what Terraform will do without making changes yet:

![2](https://github.com/user-attachments/assets/95f18bf7-dd07-453a-bc64-6d2565740f0a)

![3](https://github.com/user-attachments/assets/6f16503d-0b44-4be1-843b-c26b9f7507d2)

### 3. 🚀 Apply Configuration
Create and run the Docker container:

![4](https://github.com/user-attachments/assets/68aef041-8a34-46ab-9a43-9dca228c56e3)
![5](https://github.com/user-attachments/assets/de1e115f-98c0-48a6-b447-0b0376a9f498)
![6](https://github.com/user-attachments/assets/3c4f11b9-ae95-49a3-9e03-4c2c35bac230)


### 4. ❌ Destroy Infrastructure
To remove the Docker container and image when done:

![8](https://github.com/user-attachments/assets/04936159-eeaf-4ddc-b9d9-3c6ab789d6a3)

---
### 🗂 Terraform State File (terraform.tfstate)
Terraform uses a state file to track the real-world infrastructure it manages.
* File: terraform.tfstate
* It contains sensitive metadata like container names, ports, and resource IDs

* By default, it's stored locally

* In real projects, we should configure a remote backend (e.g., AWS S3, Terraform Cloud) to:

  * Secure the state

  * Enable collaboration

  * Prevent loss/corruption

![9](https://github.com/user-attachments/assets/0a040814-c2d7-4a8d-b93c-dfc060527b8a)

This is terraform.tfstate for this project

---
### 📍 Terraform State Commands
terraform state list
Lists all resources Terraform is managing.
 
![10](https://github.com/user-attachments/assets/8dd7b0c3-3305-497b-9791-3d4ee781dcc4)

---
### 🌐 Accessing the Application
Once the container is running, you can access the Flask app locally:

📎 http://localhost:5000

![7](https://github.com/user-attachments/assets/63e7efc6-f5e8-423a-b0c3-f0452064dd32)








