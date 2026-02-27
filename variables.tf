variable "prefix" {
  type = string
}
variable "enviroment" {
  type = string

}
variable "project_name" {
  description = "the name of project"
  type        = string
  default     = "opensip-prod"

}
variable "region" {
  description = "region of the project"
  type        = string
  default     = "us-central1"

}
variable "network_name" {
  description = "name of the vpc"
  type        = string
}
variable "vm_name" {
  description = "name of instance"
  type        = string
}

variable "vm_type" {
  description = "what is the image of the instanace"
  type        = string

}
variable "vm_image" {
  description = "the name of image"
  type        = string

}
variable "vm_zone" {
  description = "the name of zone "
  type        = string

}

variable "vm_tags" {
  description = "tags of instance"
  type        = list(string)
}
variable "vm_labels" {
  description = "labels of instance"
  type        = map(string)
}
