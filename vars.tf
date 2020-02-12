variable "pscloud_env" {}
variable "pscloud_company" {}
variable "pscloud_domain_name" {}

variable "pscloud_domain_records_A" {
  type = list(object({
    name      = string
    val       = set(string)
    ttl       = number
  }))
  default = []
}

variable "pscloud_domain_records_NS" {
  type = list(object({
    name      = string
    val       = set(string)
    ttl       = number
  }))
  default = []
}

variable "pscloud_domain_records_MX" {
  type = list(object({
    name      = string
    val       = set(string)
    ttl       = number
  }))
  default = []
}

variable "pscloud_domain_records_ALIAS" {
  type = list(object({
    name      = string
    val       = string
    zoneid    = string
  }))
  default = []
}

variable "pscloud_domain_records_SRV" {
  type = list(object({
    name      = string
    val       = set(string)
    ttl       = number
  }))
  default = []
}

variable "pscloud_domain_records_TXT" {
  type = list(object({
    name      = string
    val       = set(string)
    ttl       = number
  }))
  default = []
}

variable "pscloud_domain_records_CNAME" {
  type = list(object({
    name      = string
    val       = set(string)
    ttl       = number
  }))
  default = []
}