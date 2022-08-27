resource "yandex_compute_instance" "mashine" {
  count 		    = 7 
  hostname                  = var.vm[count.index]

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id    = var.ubunt
      type        = "network-hdd"
      size        = "15"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.default-subnet[0].id}"
    nat        = true
    ip_address = "192.168.100.10${count.index}"   
  }

  metadata = {
    user-data = "${file("ssh-key")}"
  }

  scheduling_policy {
    preemptible = true
  }
}
