# dd-aws-direct-connect-monitor
A DataDog agent config that I put together to monitor Cisco ASR1002-X routers. In this particular case, they monitor AWS Direct Connect connections, with many private and public VIFs. 

SNMP OIDs that are monitored include interface RX/TX throughput of all sub-interfaces (VIFs), BGP state changes and Optical Transceiver power of each physical interface. 
