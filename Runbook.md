# Operations Runbook

## Deployment

``` bash
terraform init
terraform plan
terraform apply
kubectl apply -f kubernetes/
```

Verify:

``` bash
kubectl get pods -n enterprise
kubectl get svc -n enterprise
```

## Rollback

-   Switch traffic to the previous deployment.
-   Verify application health.

## Monitoring

-   Jenkins pipeline
-   SonarQube Quality Gate
-   Trivy reports
-   Kibana dashboards
-   Kubernetes logs

Useful commands:

``` bash
kubectl get pods -A
kubectl logs <pod>
kubectl describe pod <pod>
```

## Backup & Recovery

-   Restore Terraform state.
-   Restore database backups (if applicable).
-   Validate application health.

## Incident Response

1.  Identify issue.
2.  Collect logs.
3.  Perform RCA.
4.  Apply fix.
5.  Validate.
6.  Document.

## Routine Maintenance

-   Update images
-   Rotate secrets
-   Patch nodes
-   Review IAM permissions
-   Clean up unused AWS resources
