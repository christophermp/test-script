#!/bin/bash

# Test if OpenVPN is installed
if ! command -v openvpn &> /dev/null
then
    echo "OpenVPN is not installed"
    exit 1
else
    echo "OpenVPN is installed"
fi

# Test if openvpn-status is working
if [ -f /usr/local/bin/openvpn-status ]
then
    echo "openvpn-status is installed"
    /usr/local/bin/openvpn-status --help
else
    echo "openvpn-status is not installed"
    exit 1
fi

echo "All tests passed successfully"
