variable "myvar" {
    type = string
    default = "Hello Terraform"
}

variable "mymap" {
    type = map(string)
    default = {
        mykey = "my value"
        mykey1 = "my value1"
    }
}

variable "mylist" {
    type = list
    default = [1,2,3]
}

variable "inactive" {
    default = false
}

variable "newlist" {
    type = list
    default = [4,5,6]
}

variable "myset" {
    default = [5,6,1,2,2,3,4]
}

variable "newtuple" {
    type = tuple 
    default = [0, string, false]
}