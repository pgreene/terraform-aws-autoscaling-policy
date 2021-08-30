output "name" {
    value = aws_autoscaling_policy.general.name
}

output "arn" {
    value = aws_autoscaling_policy.general.arn
}

output "autoscaling_group_name" {
    value = aws_autoscaling_policy.general.autoscaling_group_name
}

output "adjustment_type" {
    value = aws_autoscaling_policy.general.adjustment_type
}