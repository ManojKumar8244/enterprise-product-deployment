############################################################
# AWS Secrets Manager Secret
############################################################

resource "aws_secretsmanager_secret" "database" {

  name = "${var.project_name}-${var.environment}-database4"

  description = "Database Credentials"

}

resource "aws_secretsmanager_secret_version" "database" {

  secret_id = aws_secretsmanager_secret.database.id

  secret_string = jsonencode({

    username = var.db_username

    password = var.db_password

  })

}
