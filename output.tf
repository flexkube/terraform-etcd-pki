output "etcd_ca_cert" {
  value       = tls_locally_signed_cert.etcd_ca.cert_pem
  description = "etcd CA certificate."
}

output "etcd_ca_key" {
  value       = tls_private_key.etcd_ca.private_key_pem
  description = "etcd CA private key."
}

output "etcd_peer_certs" {
  value       = tls_locally_signed_cert.peer.*.cert_pem
  description = "etcd peer certificates."
}

output "etcd_peer_keys" {
  value       = tls_private_key.peer.*.private_key_pem
  description = "etcd peer certificate private keys."
  sensitive   = true
}

output "etcd_server_certs" {
  value       = tls_locally_signed_cert.server.*.cert_pem
  description = "etcd server certificates."
}

output "etcd_server_keys" {
  value       = tls_private_key.server.*.private_key_pem
  description = "etcd server certificate private keys."
  sensitive   = true
}

output "client_certs" {
  value       = tls_locally_signed_cert.client.*.cert_pem
  description = "Client certificates."
}

output "client_keys" {
  value       = tls_private_key.client.*.private_key_pem
  description = "Client certificate private keys."
  sensitive   = true
}

output "etcd_peer_ips" {
  value       = var.peer_ips
  description = "etcd peer IPs used for certificates."
}

output "etcd_peer_names" {
  value       = var.peer_names
  description = "etcd peer names."
}
