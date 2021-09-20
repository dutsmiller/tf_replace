variable "unique" {
  type = string
}

resource "random_string" "random1" {
 length = 10
}

resource "random_string" "random2" {
 length = 10
}

resource "local_file" "random1" {
    content     = random_string.random1.result
    filename = "${path.module}/${var.unique}_1.txt"
}

resource "local_file" "random2" {
    content     = random_string.random2.result
    filename = "${path.module}/${var.unique}_2.txt"
}
