variable region {
  type        = string
  default     = "ap-southeast-3"
}

variable public-subnet {
  type        = list(string)
  default     = ["subnet-05ac7d9b7c1509757","subnet-03acee8be974e8d6d"]
}