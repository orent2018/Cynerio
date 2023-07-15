# Cynerio


 In this exercise we build a container running a fastapi based python app which sets and gets items from a 

 persistant redis database in which the items are stored.  

 A healthcheck was added to the app in order to check its status externally.


 The app uses a username and password to securely connect to the redis database. These were introduced 
 
 externally as environment variables for the sake of this exercise in order to avoid adding them to the

 code. In a more production like environment they need to be introduced from an external key store such
 
 as vault or AWS secret manager. Docker secrets can also be used if the docker compose setting is turned

 into a 1 node swarm cluster otherwise external docker secrets are not allowed.


 A prometheus container was added to monitor the python container on the /prom_metrics end point and the

 redis container as well. In order to monitor the redis container a redis exporter container was added to 

 the configuration.

 All of the major 3 containers were supplemented with healthchecks in the docker compose file in order

 to check that the containers for the services are healthy. 
