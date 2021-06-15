//String
variable "myvar" {
     type=string
     default="Hi from Terraform"
}
//terraform version
//terraform console 
//var.myvar
//"${var.myvar}"

//Real Example 
variable "private-cidr" {
  type    = string
  default = "10.0.0.0/24"
}

//number
variable "http_port" {
  type=number
  default=8080
}
//var.set_password


//boolean
variable "set_password" {
  default = false
}
//var.set_password


//number and list 
variable "docker_ports" {
  type = list(object({
    internal = number
    external = number
    protocol = string
  }))
  default = [
    {
      internal = 8300
      external = 8300
      protocol = "tcp"
    }
  ]
}

//MAP
variable "mymap" {
	type = map(string)
	default = {
	mykey = "my value"	
    }
}


//var.mymap
//$”{var.mymap}”
//var.mymap["mykey"]
//"${var.mymap["mykey"]}"

//Real-World Example

variable "project_tags" {
  type          = map(string)
  default       = {
    component   = "Frontend"
    environment = "Production"
  }
}
//var.project_tags
//var.project_tags["component"]
//var.project_tags["environment"]




//LIST
variable "mylist" {
	  type = list
	  default = [1,2,3]
		 	
	    }
//var.mylist
//var.mylist[0]
//var.mylist[1]
//var.mylist[2]
//Terraform support functions 
//element(var.mylist,0)
//element(var.mylist,1)
//element(var.mylist,2)
//slice(var.mylist,0,2)


//Real-world Example
variable "users" {
  type    = list
  default = ["root", "user1", "user2"]
}
//var.users
//var.users[0]
//var.users[1]
//var.users[2]


