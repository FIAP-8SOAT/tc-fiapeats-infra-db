variable "destroy_infra" {
  description = "Define se a infraestrutura deve ser destruída (true/false)"
  type        = bool
  default     = false
}

variable "table_name" {
  description = "Nome da tabela DynamoDB"
  type        = string
  default     = "fiapeatsdb"
}
