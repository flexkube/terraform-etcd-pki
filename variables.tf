# Required variables.
variable "root_ca_cert" {
  description = "Root CA certificate."
  type        = string
}

variable "root_ca_key" {
  description = "Root CA key."
  type        = string
}

variable "root_ca_algorithm" {
  description = "Root CA algorithm."
  type        = string
}

variable "peer_ips" {
  description = "Peer IP addresses (one per peer)."
  default     = []
}

variable "peer_names" {
  description = "Peer names."
  default     = []
}

variable "server_ips" {
  description = "Server IP addresses (one per server)."
  default     = []
}

variable "server_names" {
  description = "Server names."
  default     = []
}

variable "client_cns" {
  description = "List of CNs for client certificates to generate."
  default     = []
}

# Optional variables.
variable "rsa_bits" {
  description = "Default number of RSA bits for certificates."
  type        = string
  default     = "4096"
}

variable "organization" {
  description = "Organization field for certificates."
  type        = string
  default     = "organization"
}
