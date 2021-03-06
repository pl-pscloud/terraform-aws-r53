variable "pscloud_env" {}
variable "pscloud_company" {}
variable "pscloud_domain_name" {}

variable "pscloud_domain_records_A" {
  type = map(object({
    name      = string
    val       = set(string)
    ttl       = number
  }))
  default = {}
}

variable "pscloud_domain_records_NS" {
  type = map(object({
    name      = string
    val       = set(string)
    ttl       = number
  }))
  default = {}
}

variable "pscloud_domain_records_MX" {
  type = map(object({
    name      = string
    val       = set(string)
    ttl       = number
  }))
  default = {}
}

variable "pscloud_domain_records_ALIAS" {
  type = map(object({
    name      = string
    val       = string
    zoneid    = string
  }))
  default = {}
}

variable "pscloud_domain_records_SRV" {
  type = map(object({
    name      = string
    val       = set(string)
    ttl       = number
  }))
  default = {}
}

variable "pscloud_domain_records_TXT" {
  type = map(object({
    name      = string
    val       = set(string)
    ttl       = number
  }))
  default = {}
}

variable "pscloud_domain_records_CNAME" {
  type = map(object({
    name      = string
    val       = set(string)
    ttl       = number
  }))
  default = {}
}