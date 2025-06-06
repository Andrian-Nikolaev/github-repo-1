resource "random_pet" "pet_name" {
  count  = var.random_count
  length = 2
}

resource "null_resource" "null_example" {
  count = var.random_count

  provisioner "local-exec" {
    command = "echo The ${count.index + 1} random pet name is: ${random_pet.pet_name[count.index].id}"
  }
}