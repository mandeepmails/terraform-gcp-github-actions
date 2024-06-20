locals {
    labels = {
        "project_id" = var.project
    }
}

variable "project" {
    type= string
    description = "ID Google project"
}

variable "region" {
    type= string
    description = "Region Google project"
}

variable  "project" {
    type = string
    description = "Name of data pipeline project to use as resource prefix"
}