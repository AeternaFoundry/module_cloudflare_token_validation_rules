resource "cloudflare_token_validation_rules" "token_validation_rules" {
  for_each = var.token_validation_rules

  action      = each.value.action
  description = each.value.description
  enabled     = each.value.enabled
  expression  = each.value.expression
  selector    = each.value.selector
  title       = each.value.title
  zone_id     = each.value.zone_id
  position    = each.value.position
}

