
prefix     = "moudulo"
enviroment = "lab"
#network vpc
network_name = "vpc-demo-modules"
#variables for instance
vm_name   = "pc-for-edward"
vm_tags   = ["env-demo", "https-server", "owner-rtenesaca"]
vm_image  = "debian-cloud/debian-11"
vm_type   = "e2-standard-2"
vm_zone   = "us-central1-c"
vm_labels = { "env" = "demo", "app" = "webserver", "owner" = "rtenesaca" }
