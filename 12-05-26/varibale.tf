variable "rg1" {
  type = map(object({
    location = string
    env      = string
  }))

}
