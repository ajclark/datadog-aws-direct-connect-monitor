# datadog-aws-direct-connect-monitor
A DataDog agent config that I put together to monitor Cisco ASR1002-X routers. In this particular case, they monitor AWS Direct Connect connections, with many private and public VIFs. 

SNMP OIDs that are monitored include interface RX/TX throughput of all sub-interfaces (VIFs), BGP state changes and Optical Transceiver power of each physical interface. 

### Getting Started
To get started, change the Hostname, IP Addresses and tag information in the `snmp.yaml` file. The included example is for two identical routers. Each router is connected to a different AWS region. One router includes monitoring for both a 10G link and a 1G link. The other router only has a single 1G link in the example. 

#### Build the Docker image
`docker build -t dd-agent .`

#### Run the Docker container from the built image
`docker run -d --name dd-agent -e API_KEY=my-datadog-api-key-here dd-agent-image`

### What the graphs look like in DataDog
![alt tag](http://imgur.com/download/uVV1WEn)

![alt tag](http://imgur.com/download/ffCvhEv)

![alt tag](http://imgur.com/download/1A0x87x)
