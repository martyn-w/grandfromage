#!/bin/bash

# Set timezone
echo "${TIMEZONE=UTC}" > /etc/timezone
dpkg-reconfigure tzdata

# Make sure i2c is loaded
echo "starting modprobe"
modprobe i2c-dev
echo "finished modprobe"

# Start the fuse driver
systemctl start epd-fuse.service


/grandfromage/sleep.py
