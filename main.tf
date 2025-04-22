terraform {
  backend "s3" {
    bucket  = "terraform-fiapeats-videos"
    key     = "state/fiapeatsdb/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_dynamodb_table" "minha_tabela" {
  name           = var.table_name
  billing_mode   = "PAY_PER_REQUEST"
  
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Environment = "dev"
    Project     = "fiapeatsdb"
  }
}
