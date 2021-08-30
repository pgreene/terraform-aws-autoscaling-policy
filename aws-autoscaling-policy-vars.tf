variable "name" {
  description = "Autoscaling Policy Name"
  default = ""
}

variable "autoscaling_group_name" {
  description = "(Required) The name of the autoscaling group."
  default = ""
}

variable "adjustment_type" {
  description = "(Optional) Specifies whether the adjustment is an absolute number or a percentage of the current capacity. Valid values are ChangeInCapacity, ExactCapacity, and PercentChangeInCapacity."
  default = "ChangeInCapacity"
}

variable "scaling_adjustment" {
  default = -1
}

variable "policy_type" {
  description = "(Optional) The policy type, either SimpleScaling, StepScaling or TargetTrackingScaling. If this value is not provided, AWS will default to SimpleScaling."
  default = null
}

variable "estimated_instance_warmup" {
  description = "(Optional) The estimated time, in seconds, until a newly launched instance will contribute CloudWatch metrics. Without a value, AWS will default to the group's specified cooldown period."
  default = null
}

variable "cooldown" {
  description = "(Optional) The amount of time, in seconds, after a scaling activity completes and before the next scaling activity can start."
  default = null
}

variable "metric_aggregation_type" {
  description = "(Optional) The aggregation type for the policy's metrics. Valid values are Minimum, Maximum, and Average. Without a value, AWS will treat the aggregation type as Average."
  default = null
}

variable "step_adjustment" {
  description = "(Optional) A set of adjustments that manage group scaling. These have the following structure"
  default = null
}

variable "scaling_adjustment_a" {
  default = null
}

variable "metric_interval_lower_bound_a" {
  default = null
}

variable "metric_interval_upper_bound_a" {
  default = null
}

variable "scaling_adjustment_b" {
  default = null
}

variable "metric_interval_lower_bound_b" {
  default = null
}

variable "metric_interval_upper_bound_b" {
  default = null
}


