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
