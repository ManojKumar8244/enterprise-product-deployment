# Automated Enterprise Product Deployment Platform

## Project Overview

The **Automated Enterprise Product Deployment Platform** is an end-to-end DevOps capstone project that automates the provisioning, deployment, monitoring, logging, and management of a cloud-native application on AWS.

The project demonstrates Infrastructure as Code (IaC), CI/CD automation, Kubernetes orchestration, centralized logging, monitoring, alerting, and Blue-Green deployment using industry-standard DevOps tools.

---

## Project Objectives

- Provision AWS infrastructure using Terraform
- Build and package the application using Maven
- Perform static code analysis with SonarQube
- Build Docker images
- Push Docker images to Amazon ECR
- Deploy the application to Amazon EKS
- Configure Kubernetes resources
- Implement CI/CD using Jenkins
- Configure monitoring using Prometheus & Grafana
- Configure centralized logging using Elasticsearch, Kibana and Fluent Bit
- Configure alerting
- Implement Blue-Green Deployment
- Demonstrate rollback and disaster recovery

---

# Technology Stack

| Category | Technology |
|-----------|------------|
| Cloud Platform | AWS |
| Infrastructure as Code | Terraform |
| Source Control | Git & GitHub |
| Continuous Integration | Jenkins |
| Build Tool | Maven |
| Code Quality | SonarQube |
| Containerization | Docker |
| Container Registry | Amazon ECR |
| Orchestration | Kubernetes (Amazon EKS) |
| Secrets Management | AWS Secrets Manager |
| External Secrets | External Secrets Operator |
| Monitoring | Prometheus |
| Visualization | Grafana |
| Logging | Elasticsearch |
| Log Analytics | Kibana |
| Log Collection | Fluent Bit |
| Deployment Strategy | Blue-Green Deployment |
| Disaster Recovery | Rollback & Backup Strategy |

---

# Project Structure

```
enterprise-product-deployment/
│
├── analytics-platform/              # Spring Boot Application
├── product-deployment-pipeline/     # Jenkins Pipeline
├── product-infrastructure/          # Terraform Infrastructure
├── product-kubernetes/             # Kubernetes Manifests
├── Architecture/                   # Architecture Diagram
├── Screenshots/                    # Project Screenshots
│
├── Architecture_Documentation.md
├── Backup_Verification.md
├── Cost_Optimization_Report.md
├── Production_Expectations.md
├── RTO_RPO_Documentation.md
├── Runbook.md
├── Trusted_Advisor_Findings.md
└── README.md
```
---

# Features

- Automated Infrastructure Provisioning using Terraform
- AWS VPC, IAM and EKS Cluster Deployment
- Docker Image Build & Amazon ECR Integration
- Jenkins CI/CD Pipeline
- SonarQube Quality Gate
- Kubernetes Deployment Automation
- ConfigMaps & Secrets
- External Secrets Operator Integration
- Prometheus Monitoring
- Grafana Dashboards
- Elasticsearch Logging
- Kibana Visualization
- Fluent Bit Log Collection
- Alert Configuration
- Blue-Green Deployment Strategy
- Rollback Demonstration
- Backup Verification
- Disaster Recovery Documentation

- ---

# Solution Architecture

The project follows a modern cloud-native DevOps architecture.

## Workflow

Developer
↓
GitHub Repository
↓
Jenkins CI/CD Pipeline
↓
SonarQube Quality Analysis
↓
Docker Image Build
↓
Amazon ECR
↓
Amazon EKS Cluster
↓
Kubernetes Deployment
↓
Prometheus + Grafana
↓
Elasticsearch + Fluent Bit + Kibana

The complete architecture diagram is available in the `Architecture` folder.

---

# ☁️ Infrastructure Provisioning (Terraform)

Terraform is used to provision the complete AWS infrastructure.

### Resources Created

- Amazon VPC
- Public & Private Subnets
- Internet Gateway
- NAT Gateway
- Route Tables
- IAM Roles & Policies
- Amazon EKS Cluster
- Managed Node Group
- AWS Secrets Manager
- CloudWatch Configuration

### Terraform Commands

```bash
terraform init
terraform plan
terraform apply
terraform destroy
```

---

# Jenkins CI/CD Pipeline

The CI/CD pipeline automates application delivery from source code to Kubernetes.

### Pipeline Stages

- Source Code Checkout
- Maven Build
- SonarQube Code Analysis
- Quality Gate Validation
- Docker Image Build
- Docker Image Push to Amazon ECR
- Kubernetes Deployment
- Deployment Verification

### Pipeline Features

- Automated Build
- Automated Deployment
- Parameterized Builds
- Continuous Integration
- Continuous Delivery

---

# Kubernetes Deployment

The application is deployed on Amazon EKS using Kubernetes manifests.

### Kubernetes Resources

- Namespace
- Deployment
- Service
- Ingress
- ConfigMap
- Secret
- External Secret

### High Availability

- Multiple replicas
- Readiness Probe
- Liveness Probe
- Rolling Updates

---

---

# Monitoring

The project uses Prometheus and Grafana for infrastructure and application monitoring.

### Monitoring Features

- Kubernetes Cluster Monitoring
- Node Metrics
- Pod Metrics
- CPU Usage
- Memory Usage
- Network Monitoring
- Storage Monitoring

### Grafana Dashboards

- Kubernetes Cluster Dashboard
- Node Exporter Dashboard
- Pod Monitoring Dashboard
- Resource Utilization Dashboard

> Dashboard screenshots are available in the **Screenshots** folder.

---

# Centralized Logging

The project implements centralized logging using the Elastic Stack.

### Components

- Elasticsearch
- Kibana
- Fluent Bit

### Log Flow

Application Logs

↓

Fluent Bit

↓

Elasticsearch

↓

Kibana Dashboard

### Features

- Centralized Log Collection
- Kubernetes Log Monitoring
- Search & Filtering
- Log Visualization
- Dashboard Analytics

---

# Alert Configuration

Kibana Alerting is configured to monitor application logs and notify when predefined conditions are met.

### Alert Features

- Log Threshold Alerts
- Error Detection
- Alert Rules
- Real-time Monitoring
- Alert History

The alert configuration demonstrates automated monitoring of application events.

---

# Blue-Green Deployment

Blue-Green deployment is implemented to achieve zero-downtime application releases.

### Deployment Process

1. Deploy Blue Version
2. Verify Application Health
3. Deploy Green Version
4. Switch Traffic
5. Verify Production
6. Rollback if Required

### Benefits

- Zero Downtime
- Safe Deployment
- Easy Rollback
- Reduced Risk

