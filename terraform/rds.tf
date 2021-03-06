resource "aws_db_instance" "codecraft-db" {
  allocated_storage       = 20
  instance_class          = "db.t3.micro"
  engine                  = "postgres"
  engine_version          = "13.3"
  storage_type            = "gp2"
  name                    = var.aws_db_name
  username                = var.aws_db_user
  password                = var.aws_db_password
  backup_retention_period = 7
  copy_tags_to_snapshot   = true
  max_allocated_storage   = 200
  skip_final_snapshot     = true
  port                    = 5432
  vpc_security_group_ids  = [aws_security_group.codecraft-rds-sg.id]
  db_subnet_group_name    = aws_db_subnet_group.codecraft-rds-subnet-group.name

  lifecycle {
    prevent_destroy = false
  }
}

variable "aws_db_name" {}
variable "aws_db_user" {}
variable "aws_db_password" {}