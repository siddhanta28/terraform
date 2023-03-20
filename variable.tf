
variable "image_tag_mutability" {
    type = string
    description = ""
    default = ""
  
}

variable "scan_on_push" {
    type = bool
    description = ""
    default = true
}
       
variable "ecr_name" {
  type =  map
  default = {
    ecr     = ["my-ecr","my-ecr-2"]
  }

}

variable "additional_tags" {
  description = "Additional resource tags"
  type        = map(string)
  default     = {
    Name      = "private_repo"
  }
}


variable "access_key" {
    default = ""
}

variable "secret_key" {
    default  =""
}

variable "region" {
  type = string
  default = ""
}


