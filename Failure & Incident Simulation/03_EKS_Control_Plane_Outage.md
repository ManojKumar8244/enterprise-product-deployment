# EKS Control Plane Outage

## Objective

Kubernetes API server becomes unreachable.

## Failure Simulation

A controlled failure was introduced to observe system behavior and
validate the recovery procedure.

## Symptoms

-   kubectl commands fail.

## Sample Logs

``` text
Unable to connect to the server
```

## Root Cause Analysis

Temporary AWS control plane outage.

## Resolution Steps

1.  Verify AWS status.
2.  Wait for API recovery.
3.  Check cluster status.
4.  Validate workloads after recovery.

## Validation

-   Application functionality verified.
-   Deployment completed successfully.
-   Monitoring confirmed healthy status.

## Prevention Strategy

-   Deploy across multiple regions for critical workloads.

## Lessons Learned

Documented recovery procedures and preventive controls reduce downtime
and improve operational resilience.
