variable "aws_region" {
    type= string
    default = "ap-south-1"
}

variable "instance_type" {
    type= list(string)
    default = ["t2.micro","t2.micro"]
  
}

variable "instance_KeyPair_map" {
    type= map(string)
    default= {
     "dev" = "SurajKey"
     "prod"= "Surajkey"

    }
   
}