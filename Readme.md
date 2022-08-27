# Дипломная работа.

1. Общая структура каталогов:

- terraform - каталог манифестов создания и настройки инфраструктуры
- ansible - роли, таски и настройки для деплоя и настройки на серверах необходимых сервисов
```
root@andrew-VirtualBox:~/git_rep/stage# tree -L 2
.
+-- ansible
¦   +-- db
¦   +-- gitlab
¦   +-- inventory.yml
¦   +-- monitoring
¦   +-- nginx
¦   +-- node_exporter
¦   +-- runner
¦   +-- terraform.tfstate
¦   L-- wordpress
+-- Pic
+-- Readme.md
L-- terraform
    +-- ansible.cfg
    +-- ansible.tf
    +-- invetory.tf
    +-- main.tf
    +-- mashines.tf
    +-- net.tf
    +-- outputs.tf
    +-- ssh-key
    L-- variables.tf

10 directories, 12 files

```
2. Создание инфраструктуры  
![YandexCloud](/Pic/1.png)

3. Nginx и LetsEncrypt  
 
https://www.yardiot.ru (WordPress)  
https://gitlab.yardiot.ru (Gitlab)  
https://grafana.yardiot.ru (Grafana)  
https://prometheus.yardiot.ru (Prometheus)  
https://alertmanager.yardiot.ru (Alert Manager) 

4. Кластер MySQL  
```
mysql> SHOW REPLICA STATUS\G;
*************************** 1. row ***************************
             Replica_IO_State: Waiting for source to send event
                  Source_Host: 192.168.100.101
                  Source_User: wordpress
                  Source_Port: 3306
                Connect_Retry: 60
              Source_Log_File: mysql-bin.000001
          Read_Source_Log_Pos: 1718377
               Relay_Log_File: mysql-relay-bin.000003
                Relay_Log_Pos: 1718593
        Relay_Source_Log_File: mysql-bin.000001
           Replica_IO_Running: Yes
          Replica_SQL_Running: Yes
              Replicate_Do_DB:
          Replicate_Ignore_DB:
           Replicate_Do_Table:
       Replicate_Ignore_Table:
      Replicate_Wild_Do_Table:
  Replicate_Wild_Ignore_Table:
                   Last_Errno: 0
                   Last_Error:
                 Skip_Counter: 0
          Exec_Source_Log_Pos: 1718377
              Relay_Log_Space: 1718983
              Until_Condition: None
               Until_Log_File:
                Until_Log_Pos: 0
           Source_SSL_Allowed: No
           Source_SSL_CA_File:
           Source_SSL_CA_Path:
              Source_SSL_Cert:
            Source_SSL_Cipher:
               Source_SSL_Key:
        Seconds_Behind_Source: 0
Source_SSL_Verify_Server_Cert: No
                Last_IO_Errno: 0
                Last_IO_Error:
               Last_SQL_Errno: 0
               Last_SQL_Error:
  Replicate_Ignore_Server_Ids:
             Source_Server_Id: 1
                  Source_UUID: a112acd9-25e7-11ed-9d0f-d00d1c6358e2
             Source_Info_File: mysql.slave_master_info
                    SQL_Delay: 0
          SQL_Remaining_Delay: NULL
    Replica_SQL_Running_State: Replica has read all relay log; waiting for more updates
           Source_Retry_Count: 86400
                  Source_Bind:
      Last_IO_Error_Timestamp:
     Last_SQL_Error_Timestamp:
               Source_SSL_Crl:
           Source_SSL_Crlpath:
           Retrieved_Gtid_Set:
            Executed_Gtid_Set:
                Auto_Position: 0
         Replicate_Rewrite_DB:
                 Channel_Name:
           Source_TLS_Version:
       Source_public_key_path:
        Get_Source_public_key: 0
            Network_Namespace:
1 row in set (0.01 sec)

ERROR:
No query specified
```
5. WordPress  

![Site](/Pic/2.png)

![Wordpress](/Pic/7.png)

6. Gitlab CE и Gitlab Runner

![GitLab](/Pic/3.png)

![Runner](/Pic/8.png)

![Pipelines](/Pic/10.png)

![CI/CD](/Pic/9.png)

7. Prometheus, Alert Manager, Node Exporter и Grafana

![Prometheus](/Pic/5.png)

![Alert Manager](/Pic/6.png)

![Grafana](/Pic/4.png)