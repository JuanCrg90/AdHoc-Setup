#!/bin/bash

echo "-------------------------------Welcome Ad-Hoc Configuration for RPI-------------------------------"
echo "Downloading the isc-dhcp-server"
sudo apt-get install isc-dhcp-server


echo "-------------------------------Backup Files-------------------------------"

echo "-------------------------------Backup isc-dhcp-server-------------------------------"
sudo cp /etc/default/isc-dhcp-server /etc/default/isc-dhcp-server.Backup
echo "OK"

echo "-------------------------------Backup dhcpd.conf-------------------------------"
sudo cp /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.Backup
echo "OK"

echo "-------------------------------Backup interfaces-------------------------------"
sudo cp /etc/network/interfaces /etc/network/interfaces.Backup
echo "OK"

echo "-------------------------------Backup rc.local-------------------------------"
sudo cp /etc/rc.local /etc/rc.local.Backup
echo "OK"


echo "-------------------------------Copying the Configuration Files-------------------------------"

echo "-------------------------------Copying isc-dhcp-server-------------------------------"
sudo cp isc-dhcp-server /etc/default/
echo "OK"

echo "-------------------------------Copying dhcpd.conf-------------------------------"
sudo cp dhcpd.conf /etc/dhcp/
echo "OK"

echo "-------------------------------Copying interfaces-------------------------------"
sudo cp interfaces /etc/network/
echo "OK"

echo "-------------------------------Backup rc.local-------------------------------"
sudo cp rc.local  /etc/
echo "OK"

echo "-------------------------------Prevent DHCP From Starting At Boot-------------------------------"
sudo update-rc.d -f isc-dhcp-server remove
echo "OK"


echo "-------------------------------Reboot In...-------------------------------"
sleep 1.5s
echo "3"
sleep 1.5s
echo "2"
sleep 1.5s
echo "1"
sleep 1.5s
echo "bye bye"

sudo reboot