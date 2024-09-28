variable "subscription_id" {
  type = string
  
}
variable "tenant_id" {
  type = string
  
}
variable "client_id" {

  type = string
}  
# variable "client_secret" {
#   type = string
#  d
# }

variable "object_id" {
  description = "Azure Object ID for the federated token"
  type = string
  
}

