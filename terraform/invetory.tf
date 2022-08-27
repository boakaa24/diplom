resource "local_file" "inventory" {
  content = <<-DOC
    
    [revproxy]
    yardiot.ru ansible_host=${yandex_compute_instance.mashine[0].network_interface.0.nat_ip_address} email=admin@yardiot.ru domain=yardiot.ru
    
    [db]
    db01.yardiot.ru ansible_host=${yandex_compute_instance.mashine[1].network_interface.0.nat_ip_address}
    db02.yardiot.ru ansible_host=${yandex_compute_instance.mashine[2].network_interface.0.nat_ip_address}

    [db01]
    db01.yardiot.ru ansible_host=${yandex_compute_instance.mashine[1].network_interface.0.nat_ip_address}

    [db02]
    db02.yardiot.ru ansible_host=${yandex_compute_instance.mashine[2].network_interface.0.nat_ip_address}
   
    [wordpress]
    app.yardiot.ru ansible_host=${yandex_compute_instance.mashine[3].network_interface.0.nat_ip_address} domain=yardiot.ru 

    [gitlab]
    gitlab.yardiot.ru ansible_host=${yandex_compute_instance.mashine[4].network_interface.0.nat_ip_address} domain=yardiot.ru gitlab_external_url=http://gitlab.yardiot.ru/

    [runner]
    runner.yardiot.ru ansible_host=${yandex_compute_instance.mashine[5].network_interface.0.nat_ip_address} domain=yardiot.ru  

    [monitoring]
    monitoring.yardiot.ru ansible_host=${yandex_compute_instance.mashine[6].network_interface.0.nat_ip_address} domain=yardiot.ru

    DOC

  filename = "../ansible/inventory.yml"

  depends_on = [
    yandex_compute_instance.mashine[0],
    yandex_compute_instance.mashine[1],
    yandex_compute_instance.mashine[2],
    yandex_compute_instance.mashine[3],
    yandex_compute_instance.mashine[4],
    yandex_compute_instance.mashine[5],
    yandex_compute_instance.mashine[6],
  ]
}
