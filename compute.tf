resource "oci_core_instance" "ubuntu_instance" {
  # Required
  availability_domain = var.availability_domain
  compartment_id      = oci_identity_compartment.tf-compartment.compartment_id
  shape               = var.shape
  shape_config {
    ocpus         = var.shape_config.ocpus
    memory_in_gbs = var.shape_config.memory_in_gbs
  }
  source_details {
    boot_volume_size_in_gbs = var.source_details.boot_volume_size_in_gbs
    source_id               = var.source_details.source_id
    source_type             = "image"
  }

  # Optional
  display_name = "my-terraform-machine"
  create_vnic_details {
    assign_ipv6ip             = "false"
    assign_private_dns_record = "true"
    assign_public_ip          = "true"
    subnet_id                 = var.subnet_id
  }
  metadata = {
    ssh_authorized_keys = file(var.instance_ssh_public_key_path)
  }
  preserve_boot_volume = false
}