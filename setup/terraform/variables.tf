variable "k8s_version" {
  type        = string
  description = "Kubernetes version for the EKS cluster"
  default     = "1.30"
}

variable "enable_private" {
  type        = bool
  description = "Enable private endpoints and isolate cluster within private subnets"
  default     = false
}

variable "availability_zones" {
  type        = list(string)
  description = "List of Availability Zones for multi-AZ subnet deployment (EKS requires at least 2)"
  default     = ["us-east-1a", "us-east-1b"]
}
