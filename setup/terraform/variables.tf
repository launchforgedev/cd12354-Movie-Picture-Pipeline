variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones for subnets"
  default     = ["us-east-1a", "us-east-1b"]
}

variable "k8s_version" {
  type        = string
  description = "Kubernetes version for the EKS cluster"
  default     = "1.30"
}

variable "enable_private" {
  type        = bool
  description = "Toggle private VPC endpoint access and restrict public EKS endpoint"
  default     = false
}
