output "all-availability-domains-in-your-tenancy" {
  value = data.oci_identity_availability_domains.ads.availability_domains
}

output "oracle-vm-public-ip" {
  value = oci_core_instance.ubuntu_instance.public_ip
}