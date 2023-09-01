variable "filename_file" {
    type = string
    description = "Name of the file"
    default  = "testing_file.txt"
}

variable "file_content" {
    type = string
    description = "Content of the file"
    default = "Hello, Lavish this side.\nThis is my assignment 1 of DevOps."
}

variable "permissions" {
    type = string
    description = "Permission to set for file"
    default = 0444
}