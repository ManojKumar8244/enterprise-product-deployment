# Certificate Expiration

## Objective

TLS certificate expires, causing secure connections to fail.

## Failure Simulation

A controlled failure was simulated to validate the recovery process.

## Sample Logs

``` text
NET::ERR_CERT_DATE_INVALID
SSL certificate has expired
```

## Root Cause Analysis

Certificate renewal was not completed before the expiration date.

## Resolution Steps

1.  Identify the expired certificate.
2.  Renew or replace the certificate.
3.  Restart the affected service or Ingress.
4.  Verify HTTPS connectivity.

## Validation

-   System recovered successfully.
-   Services operating normally.
-   Monitoring confirms healthy status.

## Prevention Strategy

-   Monitor certificate expiry and automate renewal (e.g.,
    cert-manager).

## Lessons Learned

Regular monitoring, backups, and documented procedures reduce recovery
time and operational risk.
