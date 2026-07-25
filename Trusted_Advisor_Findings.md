# Trusted Advisor Findings

## Objective

AWS Trusted Advisor was reviewed to evaluate the deployed infrastructure
against AWS security and fault tolerance best practices.

## Security Findings

### Security Groups -- Specific Ports Unrestricted

**Status:** Action Recommended

**Observation** - 7 of 12 security group rules allow unrestricted
inbound access (0.0.0.0/0) to specific ports.

**Recommendation** - Restrict inbound access to trusted IP ranges. -
Open only required ports. - Remove unused security group rules.

### Amazon EBS Public Snapshots

**Status:** Healthy

-   0 public EBS snapshots detected.

### Amazon RDS Public Snapshots

**Status:** Healthy

-   0 public RDS snapshots detected.

### Amazon S3 Bucket Permissions

**Status:** Healthy

-   0 publicly accessible S3 buckets detected.

### MFA on Root Account

**Status:** Healthy

-   Multi-Factor Authentication (MFA) is enabled for the root account.

## Fault Tolerance Findings

### AWS STS Global Endpoint Usage

**Status:** Healthy

-   0 resources flagged.

## Summary
```
  Check                                            Status
  ------------------------------------------------ --------------------
  Security Groups -- Specific Ports Unrestricted   Action Recommended
  Amazon EBS Public Snapshots                      Healthy
  Amazon RDS Public Snapshots                      Healthy
  Amazon S3 Bucket Permissions                     Healthy
  MFA on Root Account                              Enabled
  AWS STS Global Endpoint Usage                    Healthy
```
## Screenshots

Include the following AWS Console screenshots as evidence: 1. Trusted
Advisor -- Security checks 2. Trusted Advisor -- Fault Tolerance checks
3. Trusted Advisor -- Cost Optimization page (if available)

## Conclusion

The Trusted Advisor review indicates that the environment generally
follows AWS best practices. The primary recommendation is to restrict
overly permissive security group rules to strengthen the security
posture.
