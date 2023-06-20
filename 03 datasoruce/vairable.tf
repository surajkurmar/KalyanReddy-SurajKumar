variable "aws_region" {
    type= string
    default = "ap-south-1"
}

variable "instance_type" {
    type= string
    default = "t2.micro"
  
}

variable "instance_KeyPair" {
    type= string
    default= "surajkey"
   
}