variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "us-west-2"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-0a4df59262c92cf19"
    eu-west-1 = "ami-844e0bf7"
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = ""
}

variable "PATH_TO_PUBLIC_KEY" {
  default = ""
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}

