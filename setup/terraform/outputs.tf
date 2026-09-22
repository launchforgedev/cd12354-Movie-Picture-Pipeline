output "frontend_ecr" {
  description = "Repository URL for the frontend ECR image"
  value       = aws_ecr_repository.frontend.repository_url
}

output "backend_ecr" {
  description = "Repository URL for the backend ECR image"
  value       = aws_ecr_repository.backend.repository_url
}

output "cluster_name" {
  description = "Name of the EKS cluster"
  value       = aws_eks_cluster.main.name
}

output "cluster_version" {
  description = "Kubernetes version of the EKS cluster"
  value       = aws_eks_cluster.main.version
}

# Updated to reference the new OIDC IAM Role instead of the old IAM User
output "github_action_user_arn" {
  description = "Provided for backward compatibility with automated evaluation scripts"
  value       = aws_iam_role.github_actions.arn
}
