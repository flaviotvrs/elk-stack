# ELK Stack for IIS Access Logs

This template can be used to monitor applications that run in IIS. It's simple to configure.

This template uses nginx to protect the kibana and elasticsearch using basic-auth. To change user/pass, you need to edit the file ./nginx/.htpasswd. It uses the logstash to recive, parse and store the logs in elasticsearch (index accesslogs-*). The logstash configuration file is stored in folder ./logstash/logstash.conf. This configuration uses the input type "beats", so, to send logs you need to install Filebeat (https://www.elastic.co/products/beats/filebeat) in your IIS Server and use a configuration file like ./filebeat/filebeat.yml (change the word YOUR_LOGSTASH_SERVER).

So, do these steps to use this template:

  1- Install docker container (https://docs.docker.com/engine/installation/)
  
  2- Install docker compose (https://docs.docker.com/compose/install/)
  
  3- Install git and clone this repo
  
  4- Enter on the cloned folder and run:
  
  sudo docker-componse up --build -d

Done.

To access:
kibana: http://YOUR_SERVER
elasticsearch: http://YOUR_SERVER:5601
