variable "stack_variable_sets" {
  description = <<EOT
Map of stack_variable_sets, attributes below
Required:
    - stack_id
    - variable_set_id
EOT

  type = map(object({
    stack_id        = string
    variable_set_id = string
  }))
}

