# GRID_kathara
task for GRID&amp;Cloud 2018-2019

[Install Kathara](https://github.com/KatharaFramework/Kathara/wiki/Linux)
### Create docker  container for postgres
``` 
cd postgresql
docker build -t postgresql --tag kathara/postgresql .
``` 
### Create docker  container for redis
``` 
cd redis
docker build -t redis --tag kathara/redis .
``` 
### Create docker  container for SDG
``` 
cd postgresql
docker build -t data_grabber --tag kathara/data_grabber .
``` 
### Run kathara
``` 
cd lab
$NETKIT_HOME/lstart
``` 
### [Video](https://www.youtube.com/watch?v=iL0hgnaf5DU)

### What SDG do
The SDG collects data from the exchange (in this case, binance), processes and writes it to postgresql. Also, the SDG is subscribed to the Redis channel ex_pub_sub, where subs/unsubs come to it. With a subscription, the SDG duplicates the data in the Redis channels.
