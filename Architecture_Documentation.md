# Architecture Documentation

## Objective

This document describes the architecture of the Enterprise Product
Deployment Platform.

## High-Level Architecture

``` text
Developer
   │
GitHub Repository
   │
GitHub Webhook
   │
Jenkins CI/CD
   ├── SonarQube
   ├── Trivy
   ▼
Docker Build
   ▼
Amazon ECR
   ▼
Terraform
   ▼
Amazon EKS
   ▼
Spring Boot Application
   ▼
Fluent Bit
   ▼
Elasticsearch
   ▼
Kibana
```

## Deployment Flow

1.  Code pushed to GitHub.
2.  Webhook triggers Jenkins.
3.  Jenkins builds, tests, scans, and pushes image to Amazon ECR.
4.  Terraform provisions infrastructure.
5.  Kubernetes deploys the application to Amazon EKS.
6.  Fluent Bit sends logs to Elasticsearch.
7.  Kibana provides dashboards and log analysis.

## Benefits

-   Automated CI/CD
-   Infrastructure as Code
-   Secure image scanning
-   Centralized logging
-   Blue/Green deployment
-   Simplified rollback
