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
    us-east-1 = "ami-088cb86eea6186ffe"
    us-west-2 = "ami-0a4df59262c92cf19"
    eu-west-1 = "ami-0a1e8765bfda02967"
  }
}

