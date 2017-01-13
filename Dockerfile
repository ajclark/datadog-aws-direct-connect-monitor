FROM datadog/docker-dd-agent
ADD snmp.yaml /conf.d/snmp.yaml
ADD tcp_check.yaml /conf.d/tcp_check.yaml
