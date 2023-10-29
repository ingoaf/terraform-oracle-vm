provider "oci" {
  tenancy_ocid     = var.compartment_id
  user_ocid        = var.user_id
  private_key_path = var.oracle_user_ssh_public_key_path
  fingerprint      = var.oracle_user_fingerprint
  region           = "eu-frankfurt-1"
}