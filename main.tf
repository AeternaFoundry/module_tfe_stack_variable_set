resource "tfe_stack_variable_set" "stack_variable_sets" {
  for_each = var.stack_variable_sets

  stack_id        = each.value.stack_id
  variable_set_id = each.value.variable_set_id
}

