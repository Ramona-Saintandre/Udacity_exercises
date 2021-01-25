//resource_deploy with Terraform
//https://classroom.udacity.com/nanodegrees/nd082/parts/07bea1bd-9a45-4e1e-b79d-4a17b32e9faf/modules/7ddc5964-272c-4ffe-8353-a52f51a090cb/lessons/a1bde9e8-95f4-4686-8022-c5ed0395a23d/concepts/12d4affb-564f-431f-aaca-0017678f8de7


variable "prefix" {
  description = "The prefix which should be used for all rsources in this expample"
  default = "udacityL4"
}
variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default     = "Central US"
}