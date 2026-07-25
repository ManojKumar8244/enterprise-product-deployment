# Kubernetes Node Failure

## Objective

A worker node becomes unavailable or is terminated.

## Failure Simulation

A controlled failure scenario was simulated to validate recovery
procedures.

## Symptoms

-   Pods enter Pending or are rescheduled to healthy nodes.

## Sample Logs

``` text
NodeNotReady
Evicting pods from failed node
```

## Root Cause Analysis

Node crash, EC2 termination, or infrastructure failure.

## Resolution Steps

1.  Check node status using kubectl get nodes.
2.  Replace or recover the failed node.
3.  Verify pods are rescheduled.
4.  Confirm application availability.

## Validation

-   Recovery completed successfully.
-   Application and services verified.
-   Monitoring confirms healthy operation.

## Prevention Strategy

-   Use multiple worker nodes and Cluster Autoscaler.

## Lessons Learned

Regular testing, monitoring, and documented recovery procedures reduce
downtime and improve platform resilience.
