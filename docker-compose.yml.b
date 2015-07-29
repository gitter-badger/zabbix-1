server:
  build: docker-build/.
  volumes:
    - /var/lib/docker/vfs/dir/zab1_agentd.d:/etc/zabbix/zabbix_agentd.d
    - /var/lib/docker/vfs/dir/zab1_alscripts:/usr/lib/zabbix/alertscripts
    - /var/lib/docker/vfs/dir/zab1_exscripts:/usr/lib/zabbix/externalscripts
    - /var/lib/docker/vfs/dir/zab1_db:/var/lib/mysql
  ports:
    - "10051:10051"
    - "10052:10052"
    - "80:80"
    - "2812:2812"
  restart: always