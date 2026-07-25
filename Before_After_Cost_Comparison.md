# Before and After Cost Comparison

## Objective

This document summarizes the expected impact of the implemented cost
optimization techniques.
```
  Area                     Before Optimization           After Optimization
  ------------------------ ----------------------------- ---------------------------------
  Compute                  On-Demand instances           Spot Instances where applicable
  Scaling                  Fixed capacity                Kubernetes Autoscaling
  Resource Usage           Potential over-provisioning   Right-sized resources
  Infrastructure Cleanup   Manual                        Managed through Terraform
```
## Expected Benefits

-   Reduced compute costs using Spot Instances.
-   Improved resource utilization through autoscaling.
-   Elimination of unnecessary infrastructure resources.
-   Better operational efficiency.

> **Note:** Actual AWS costs vary depending on workload, instance types,
> and usage duration. This comparison highlights the architectural
> improvements implemented during the project.
