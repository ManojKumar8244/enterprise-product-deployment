# Jenkins Failure

## Objective

Jenkins service stops during CI/CD.

## Failure Simulation

A controlled failure was introduced to observe system behavior and
validate the recovery procedure.

## Symptoms

-   Pipeline execution fails.

## Sample Logs

``` text
ERROR: Jenkins is offline
```

## Root Cause Analysis

Jenkins service crashed or host unavailable.

## Resolution Steps

1.  Restart Jenkins.
2.  Check logs.
3.  Validate agents.
4.  Re-run pipeline.

## Validation

-   Application functionality verified.
-   Deployment completed successfully.
-   Monitoring confirmed healthy status.

## Prevention Strategy

-   Regular backups and HA Jenkins deployment.

## Lessons Learned

Documented recovery procedures and preventive controls reduce downtime
and improve operational resilience.
