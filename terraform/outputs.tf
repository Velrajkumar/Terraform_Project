output "cluster_name" {
  description = "Name of the created EKS cluster"
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoint URL for the Kubernetes API server"
  value       = module.eks.cluster_endpoint
}

output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "kubectl_config_command" {
  description = "Command to configure local kubectl to access the cluster"
  value       = "aws eks update-kubeconfig --region ${var.aws_region} --name ${module.eks.cluster_name}"
}
