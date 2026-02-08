# Automated Deployment & Scaling Using DevOps Practices

## 📖 Project Description

This project demonstrates the implementation of an end-to-end DevOps pipeline focused on automated application deployment, container orchestration, infrastructure provisioning, and dynamic scaling.

The objective was to design a scalable, portable, and production-ready deployment workflow by integrating industry-standard DevOps tools and cloud services.

---

## 🏗️ Solution Architecture

The solution follows a modern DevOps delivery model:

```
Source Code → Version Control → Containerization → Orchestration → Cloud Infrastructure → Auto Scaling
```

**Workflow:**

1. Application code managed via Git workflow
2. Container image built using Docker
3. Image deployed to Kubernetes cluster
4. Infrastructure provisioned using Terraform on AWS
5. Horizontal Pod Autoscaler enabled for dynamic scaling

---

## 🛠️ Technology Stack

| Domain                 | Tools / Services                |
| ---------------------- | ------------------------------- |
| Version Control        | Git, GitHub                     |
| Containerization       | Docker                          |
| Orchestration          | Kubernetes (Minikube / AWS EKS) |
| Infrastructure as Code | Terraform                       |
| Cloud Platform         | AWS                             |
| Application Runtime    | Python (Flask)                  |

---

## 📂 Repository Structure

```
.
├── app.py
├── requirements.txt
├── Dockerfile
│
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
│
└── terraform/
    ├── provider.tf
    └── main.tf
```

---

## ⚙️ Application Overview

A lightweight Python Flask web application was developed to validate container deployment and scaling capabilities.

**Default Response:**

```
Hello from DevOps Project 🚀
```

---

## 🐳 Containerization — Docker

The application was containerized to ensure portability and environment consistency.

**Build Image**

```bash
docker build -t automated-devops-project:v1 .
```

**Run Container**

```bash
docker run -d -p 5000:5000 automated-devops-project:v1
```

---

## ☸️ Kubernetes Orchestration

Kubernetes was used to manage containerized workloads and ensure high availability.

**Key Configurations**

* Deployment with multiple replicas
* NodePort service exposure
* Declarative YAML manifests

**Deployment**

```bash
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
```

---

## 📈 Automated Scaling

Horizontal Pod Autoscaler (HPA) was configured to dynamically scale pods based on CPU utilization metrics.

**Scaling Policy**

* Minimum Pods: 2
* Maximum Pods: 5
* Target CPU Utilization: 50%

---

## ☁️ Infrastructure Provisioning — Terraform

Infrastructure provisioning was automated using Terraform, enabling Infrastructure as Code (IaC).

**Provisioned Resources**

* AWS EC2 Instance
* Networking configuration (extendable)

**Execution Steps**

```bash
terraform init
terraform plan
terraform apply
```

---

## 🔐 Authentication & Access

AWS access was configured using AWS CLI credentials to allow Terraform to provision cloud resources securely.

---

## ✅ Key Outcomes

* Implemented Git-based version control workflow
* Achieved containerized application deployment
* Orchestrated workloads using Kubernetes
* Enabled automated horizontal scaling
* Provisioned AWS infrastructure via Terraform
* Established a scalable and portable deployment model

---

## 🚀 Potential Enhancements

* CI/CD pipeline integration (GitHub Actions / Jenkins)
* Helm chart–based deployments
* Monitoring with Prometheus & Grafana
* Centralized logging with ELK Stack
* Ingress controller for domain routing

---

## 👨‍💻 Author

**Nidhish Gangurde**
DevOps & Cloud Enthusiast

* GitHub: [https://github.com/](https://github.com/)<Nidhish27>

---

## 📜 License

This project is created for educational and demonstration purposes as part of a DevOps learning initiative.
