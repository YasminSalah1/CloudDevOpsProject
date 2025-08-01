<p align="center">
  <img src="static/logos/nti-logo.png" height="100"/>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="static/logos/ivolve-logo.png" height="100"/>
</p>

# 🚀 Final DevOps Project - Full CI/CD Pipeline

A complete end-to-end DevOps project that covers infrastructure provisioning, app containerization, automated configuration, CI/CD pipelines, and GitOps-based deployment using modern DevOps tools.




## 📁 Project Structure

```bash

📁 FinalProject
├── 📂 ansible-jenkins-setup
│   ├── 📂 inventory
│   │   └── 📄 myinventory.aws_ec2.yml
│   ├── 📂 roles
│   │   └── 📂 jenkins
│   │       ├── 📂 meta
│   │       │   └── 📄 main.yml
│   │       ├── 📂 tasks
│   │       │   └── 📄 main.yml
│   │       └── 📂 tests
│   │           ├── 📄 inventory
│   │           └── 📄 test.yml
│   ├── 📄 ansible.cfg
│   ├── 📄 jenkins-playbook.yml
│   ├── 📄 site.yml
│   └── 📄 README.md
│
├── 📂 k8s
│   ├── 📄 deployment.yaml
│   ├── 📄 namespace.yaml
│   ├── 📄 service.yaml
│   └── 🔗 shared-library
│
├── 📂 static
│   ├── 📂 logos
│   └── 📄 style.css
│
├── 📂 templates
│   └── 📄 index.html
│
├── 📂 terraform
│   ├── 📂 modules
│   ├── 📄 backend.tf
│   ├── 📄 main.tf
│   ├── 📄 outputs.tf
│   ├── 📄 variables.tf
│   └── 📄 .terraform.lock.hcl
│
├── 📄 .gitignore
├── 📄 README.md
├── 📄 app.py
└── 📄 requirements.txt


```


## ✅ What's Included?

This project demonstrates:

- 🐳 Docker containerization  
- ☸️ Kubernetes orchestration  
- 🧱 Infrastructure as Code with Terraform  
- ⚙️ Automated configuration with Ansible  
- 🛠️ Jenkins CI/CD pipelines  
- 🚀 GitOps deployment with ArgoCD  
- ☁️ AWS EC2, VPC, S3, IAM, CloudWatch  

---

## 🐳 1. Containerization with Docker

Build a Docker image for the Python Flask app:

```bash
docker build -t flask-final-app:latest .
```

### 🎯 Output:

Docker image flask-final-app:latest built from app.py and requirements.txt.

---


## ☸️ 2. Kubernetes Deployment
Steps:

1.Create namespace ivolve

2.Apply Deployment, Service manifests:

```bash
kubectl apply -f CI-CD/K8s/
kubectl get all -n ivolve

```

### 🎯 Output:

Docker image flask-final-app:latest built from app.py and requirements.txt.

![WhatsApp Image 2025-07-31 at 20 45 56](https://github.com/user-attachments/assets/373f62a2-6b08-4d16-926f-cc69d35e948b)

---

## 🛠️ 3. Infrastructure Provisioning with Terraform

1. Use Terraform to provision
2. VPC
3. EC2 Jenkins server
4. EKS cluster (optional)
5.Remote backend with S3 & DynamoDB

```bash
terraform init
terraform apply

```
![iScreen Shoter - 20250727232746466](https://github.com/user-attachments/assets/73add9ea-34fb-4e27-b5ac-42fa0828cc8f)
![iScreen Shoter - 20250727235905229](https://github.com/user-attachments/assets/ea8fd04f-0c48-4106-ba0d-99bbe401edb3)



## 🔧 4. Configuration Management with Ansible

### We configured the Jenkins EC2 instance automatically using Ansible

```bash
ansible-inventory -i inventory/myinventory.aws_ec2.yml --graph
ansible-playbook -i inventory/myinventory.aws_ec2.yml jenkins-playbook.yml

```
![iScreen Shoter - 20250728004807534](https://github.com/user-attachments/assets/4563daf5-8291-4dbb-a446-228c170f2d4c)



## 🔁 5. Continuous Integration with Jenkins

### The Jenkins pipeline automates:

1. Building Docker image
2. Pushing image to DockerHub
3. Removing local image
4. Updating Kubernetes manifests
5. Pushing updated code to GitHub
   
![iScreen Shoter - 20250802012507775](https://github.com/user-attachments/assets/4451e232-731c-4667-9f2f-f46799fa96c7)



![iScreen Shoter - 20250802015958294](https://github.com/user-attachments/assets/f0ea4e6f-4830-4572-a571-277a2cb7ed7d)


## 🚀 6. Continuous Deployment with ArgoCD

### ArgoCD is used to implement GitOps. It monitors the GitHub repo and automatically syncs Kubernetes deployments.

```bash
kubectl apply -f argocd/app-argocd.yaml

```


