# RTO / RPO Documentation

## Objective

This document defines the Recovery Time Objective (RTO) and Recovery
Point Objective (RPO) for the Enterprise Product Deployment Platform.
These metrics establish the disaster recovery targets for restoring
application services and minimizing data loss during failures.

------------------------------------------------------------------------

# Definitions

## Recovery Time Objective (RTO)

Recovery Time Objective (RTO) is the maximum acceptable amount of time
required to restore the application after an outage or disaster.

For this project:

**RTO = 30 Minutes**

Target activities during this period include:

-   Recreate infrastructure using Terraform
-   Restore Kubernetes workloads
-   Restore database (if applicable)
-   Verify application health
-   Resume production traffic

------------------------------------------------------------------------

## Recovery Point Objective (RPO)

Recovery Point Objective (RPO) is the maximum acceptable amount of data
loss measured in time.

For this project:

**RPO = 15 Minutes**

This means that, in the event of a disaster, up to 15 minutes of data
loss is considered acceptable.

------------------------------------------------------------------------

# Recovery Targets

  Metric                           Target
  -------------------------------- ------------
  Recovery Time Objective (RTO)    30 Minutes
  Recovery Point Objective (RPO)   15 Minutes

------------------------------------------------------------------------

# Disaster Recovery Workflow

``` text
Infrastructure Failure
        │
        ▼
Identify Failure
        │
        ▼
Restore Infrastructure using Terraform
        │
        ▼
Restore Database (if applicable)
        │
        ▼
Deploy Application to Amazon EKS
        │
        ▼
Verify Application Health
        │
        ▼
Resume Production Traffic
```

------------------------------------------------------------------------

# Recovery Procedure

1.  Identify the root cause of the failure.
2.  Restore infrastructure using Terraform.
3.  Restore the latest verified database backup (if a database is used).
4.  Deploy the latest application version to Amazon EKS.
5.  Verify Pods, Services, and application health.
6.  Perform rollback if the latest deployment is unstable.
7.  Resume production traffic after successful validation.

------------------------------------------------------------------------

# Monitoring During Recovery

Recovery activities should be monitored using:

-   Amazon CloudWatch
-   Kubernetes health checks
-   Application logs
-   Deployment status
-   Backup verification reports

------------------------------------------------------------------------

# Expected Outcome

-   Infrastructure can be recreated within the defined RTO.
-   Data loss remains within the defined RPO.
-   Application services are restored successfully.
-   Rollback procedures minimize downtime.
-   Disaster recovery objectives are achieved.

------------------------------------------------------------------------

# Note for This Capstone Project

The current implementation focuses on deploying a Spring Boot
application on Amazon EKS. Since no production database is deployed as
part of this project, the RPO target is documented as the recommended
objective for a future production database deployment. The RTO target
reflects the expected time to restore the infrastructure and application
using Terraform and Kubernetes.
