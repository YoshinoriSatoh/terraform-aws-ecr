variable "tf" {
  type = object({
    name          = string
    shortname     = string
    env           = string
    fullname      = string
    fullshortname = string
  })
}

variable "repositories" {
  type = list(string)
}

variable "life_cycle" {
  type = object({
    prefix = string
    count = string
  })
}