#aws_cloudwatch_event_rule
variable "cloudwatch_desliga_name" {
  type        = string
  default     = "Default_Variabletf"
  description = "description"
}

variable "agendamento_cron" {
  type        = string
  description = "Horário de agendamento da cron"
}

variable "estado" {
  type        = string
  description = "Estado do recurso, habilitado ou desabilitado"
}

variable "cloudwatch_desliga_description" {
  type    = string
  default = "Default_Variabletf"
}

variable "evento_cloudwatch" {
  type        = string
  description = "description"
}

#aws_cloudwatch_event_target
variable "nome_alvo" {
  type        = string
  description = "description"
}

variable "lambda_function_arn_desliga" {
  type        = string
  description = "O ARN da função Lambda"
}

#aws_lambda_permission
variable "statement_id" {
  type    = string
  default = "Default_Variabletf"
}

variable "lambda_function_name_desliga" {
  type        = string
  description = "O nome da função Lambda"
}

#variable "aws_region_desliga" {
#  type    = string
#  default = "us-west-1"
#}