output "stack_variable_sets_id" {
  description = "Map of id values across all stack_variable_sets, keyed the same as var.stack_variable_sets except keys with no id are omitted"
  value       = { for k, v in tfe_stack_variable_set.stack_variable_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "stack_variable_sets_stack_id" {
  description = "Map of stack_id values across all stack_variable_sets, keyed the same as var.stack_variable_sets except keys with no stack_id are omitted"
  value       = { for k, v in tfe_stack_variable_set.stack_variable_sets : k => v.stack_id if v.stack_id != null && length(v.stack_id) > 0 }
}
output "stack_variable_sets_variable_set_id" {
  description = "Map of variable_set_id values across all stack_variable_sets, keyed the same as var.stack_variable_sets except keys with no variable_set_id are omitted"
  value       = { for k, v in tfe_stack_variable_set.stack_variable_sets : k => v.variable_set_id if v.variable_set_id != null && length(v.variable_set_id) > 0 }
}

