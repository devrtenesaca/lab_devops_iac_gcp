module "network_vpc" {
  source       = "app.terraform.io/opensip/network/google"
  version      = "1.0.0"
  network_name = var.network_name
  subnets = {
    "web-subnet" = { cidr = "192.168.16.0/24", region = "us-central1" }
  }

}
output "network_vpc" {
  description = "the name of vpc"
  value       = module.network_vpc.vpc_name

}

module "vpc_instance" {
  sourc = "app.terraform.io/opensip/moduleinstances/google"
  #source = "./terraform-google-moduleinstances"
  version = "1.0.5"

  instance_name   = var.vm_name
  instance_image  = var.vm_image
  instance_labels = var.vm_labels
  instance_subnet = "web-subnet"
  instance_tags   = var.vm_tags
  instance_vpc    = module.network_vpc.vpc_name
  instance_zone   = var.vm_zone
  instance_type   = var.vm_type

}

resource "local_file" "nota_final" {
  content  = "Certifico que rtenesaca completo el laboratorio de IaC."
  filename = "certificacion.txt"
}
