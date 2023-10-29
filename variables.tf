variable "compartment_id" {
  type = string
}

variable "user_id" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "availability_domain" {
  type = string
}

variable "shape" {
  type = string
}

variable "shape_config" {
  type = object({
    memory_in_gbs = string
    ocpus         = string
  })
}

variable "source_details" {
  type = object({
    boot_volume_size_in_gbs = string
    source_id               = string
  })
}

variable "instance_ssh_public_key_path" {
  type = string
}

variable "oracle_user_ssh_public_key_path" {
  type = string
}

variable "oracle_user_fingerprint" {
  type = string
}