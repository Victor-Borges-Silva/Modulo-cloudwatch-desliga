resource "aws_cloudwatch_event_rule" "DesligaEC2" {
  name                = var.cloudwatch_desliga_name
  schedule_expression = var.agendamento_cron
  state               = var.estado
  description         = var.cloudwatch_desliga_description
  event_bus_name      = var.evento_cloudwatch
}

resource "aws_cloudwatch_event_target" "DesligaEC2_target" {
  rule      = aws_cloudwatch_event_rule.DesligaEC2.name
  target_id = var.nome_alvo
  arn       = var.lambda_function_arn_desliga
}

#Permite que o EventBridge invoque a função Lambda.
resource "aws_lambda_permission" "permite_EventBridge_executar_lambda" {
  statement_id = var.statement_id
  action       = "lambda:InvokeFunction"
  #function_name = aws_lambda_function.IniciaEC2.function_name
  function_name = var.lambda_function_name_desliga
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.DesligaEC2.arn
}

# Variáveis usadas para obter o ID da conta AWS e a região
data "aws_caller_identity" "current" {}
