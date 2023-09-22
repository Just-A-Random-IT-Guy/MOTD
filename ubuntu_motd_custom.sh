#!/bin/bash


echo "#############################################"
echo "Unauthorized access to this system is strictly prohibited. Only authorized users are allowed. Any malicious or unauthorized access will be reported to the authorities."
echo "#############################################"

# Current Date & Time
echo "Current Date & Time: $(date)"
echo "#############################################"
echo "____    __    ____  _______  __        ______   ______   .___  ___.  _______    .______        ___       ______  __  ___"
echo "\\   \\  /  \\  /   / |   ____||  |      /      | /  __  \\  |   \\/   | |   ____|   |   _  \\      /   \\     /      ||  |/  /"
echo " \\   \\/    \\/   /  |  |__   |  |     |  ,----'|  |  |  | |  \\  /  | |  |__      |  |_)  |    /  ^  \\   |  ,----'|  '  /"
echo "  \\            /   |   __|  |  |     |  |     |  |  |  | |  |\\/|  | |   __|     |   _  <    /  /_\\  \\  |  |     |    <"
echo "   \\    /\\    /    |  |____ |  \`----.|  \`----.|  \`--'  | |  |  |  | |  |____    |  |_)  |  /  _____  \\ |  \`----.|  .  \\"
echo "    \\__/  \\__/     |_______||_______| \\______| \\______/  |__|  |__| |_______|   |______/  /__/     \\__\\ \\______||__|\\__\\"
echo ""
echo "#############################################"

# System Info
echo "System Info:"
echo "Hostname: $(hostname)"
echo "Kernel Version: $(uname -r)"
echo "Ubuntu Version: $(lsb_release -d | awk -F ":\t" '{print $2}')"
echo "Users logged in: $(who | wc -l)"
echo "Local IP address: $(hostname -I)"
echo "Public IP address: $(curl -s ifconfig.me)"
echo "#############################################"
