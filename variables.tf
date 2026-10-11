variable "token_validation_rules" {
  description = <<EOT
Map of token_validation_rules, attributes below
Required:
    - action
    - description
    - enabled
    - expression
    - selector
    - title
    - zone_id
Optional:
    - position
EOT

  type = map(object({
    action      = string
    description = string
    enabled     = bool
    expression  = string
    selector = object({
      exclude = optional(list(object({
        operation_ids = optional(list(string))
      })))
      include = optional(list(object({
        host = optional(list(string))
      })))
    })
    title   = string
    zone_id = string
    position = optional(object({
      after  = optional(string)
      before = optional(string)
      index  = optional(number)
    }))
  }))
}

