/* Alta3 Research - rzfeeser@alta3.com
   An example of creating an intentional delay with Terraform. In most cases,
   doing something like this should be considered a "work-around". */
   
resource "null_resource" "previous" {
  provisioner "local-exec" {
    command = "echo 'F.E.' > file2.txt"
  }
}

resource "time_sleep" "wait_30_seconds" {
  depends_on = [null_resource.previous]
  create_duration = "5s"   // pause this long when a creation occurs
  destroy_duration = "6s"  // pause this long when a destroy occurs
}

resource "null_resource" "next" {
  depends_on = [time_sleep.wait_30_seconds]
}
