resource "aws_autoscaling_policy" "general" {
  name = var.name
  autoscaling_group_name = var.autoscaling_group_name
  adjustment_type = var.adjustment_type
  scaling_adjustment = var.scaling_adjustment
  policy_type = var.policy_type
  estimated_instance_warmup = var.estimated_instance_warmup
  cooldown = var.cooldown

  metric_aggregation_type = var.metric_aggregation_type

  dynamic step_adjustment {
    for_each = var.step_adjustment == null ? [] : list(var.step_adjustment)
    content {
      scaling_adjustment = step_adjustment.value.scaling_adjustment_a
      metric_interval_lower_bound = var.metric_interval_lower_bound_a
      metric_interval_upper_bound = var.metric_interval_upper_bound_a
    }
  }

  dynamic step_adjustment {
    for_each = var.step_adjustment == null ? [] : list(var.step_adjustment)
    content {
      scaling_adjustment = step_adjustment.value.scaling_adjustment_b
      metric_interval_lower_bound = var.metric_interval_lower_bound_b
      metric_interval_upper_bound = var.metric_interval_upper_bound_b
    }
  }

}