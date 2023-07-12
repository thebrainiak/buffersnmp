#!/bin/bash

# Path to the SNMP configuration file
config_file="/etc/snmp/snmpd.conf"

# Desired buffer size in MB
buffer_size_mb=30

# Convert buffer size from MB to KB
buffer_size_kb=$((buffer_size_mb * 1024))

# Add the extension and buffer size configuration lines to the SNMP configuration file
echo "extend .1.3.6.1.4.1.2021.2.1.100 my_extension /usr/bin/my_extension_script" | sudo tee -a "$config_file"
echo "smuxsocket /var/lib/snmp/snmpd.sock" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.1" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.2" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.3" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.4" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.5" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.6" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.7" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.8" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.9" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.10" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.11" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.12" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.13" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.14" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.15" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.16" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.17" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.18" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.19" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.20" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.21" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.22" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.23" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.24" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.25" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.26" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.27" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.28" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.29" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.30" | sudo tee -a "$config_file"
echo "smuxpeer .1.3.6.1.4.1.674.10892.31" | sudo tee -a "$config_file"

# Restart SNMP daemon
sudo systemctl restart snmpd
