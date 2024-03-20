variable "vm_names" {
  description = "List of names for the virtual machines"
  type        = list(string)
}
variable "username" {
  description = "List of usernames for the virtual machines"
  type        = string
}
variable "password" {
  description = "List of passwords for the virtual machines"
  type        = string
}
variable "subnetname" {
  description = "name of resource"
  type        = string
}
variable "vnetname" {
  description = "name of resource"
  type        = string
}
variable "RG" {
  description = "name of resource"
  type        = string
}
variable "location" {
  description = "name of resource"
  type        = string
}
variable "ip" {
  description = "name of resource"
  type        = list(string)
}
variable "snapshot" {
  description = "name of resource"
  type        = string
}
variable "vm_size" {
  description = "name of resource"
  type        = string
}
variable "disktype" {
  description = "name of resource"
  type        = string
}
# variable "sourceimageid" {
#   description = "name of resource"
#   type        = string
# }
variable "bootdiagnostic" {
  description = "name of resource"
  type        = string
}
variable "boot_storage" {
  description = "name of resource"
  type        = string
}
variable "project" {
  description = "name of resource"
  type        = string
}
variable "duration" {
  description = "name of resource"
  type        = string
}
variable "owner" {
  description = "name of resource"
  type        = string
}
variable "datadisktype" {
  description = "name of resource"
  type        = string
}