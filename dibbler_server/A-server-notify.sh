#!/bin/bash

LOGFILE="/var/lib/dibbler/server.sh-log"

echo "--------------------------" >> ${LOGFILE}
echo "Added route to ${PREFIX1}/64 via $ADDR1 on interface ${IFACE}." >> ${LOGFILE}

if [ "$PREFIX1" != "" ]; then
	ip -6 route replace ${PREFIX1}/64 via ${ADDR1} dev ${IFACE}
fi
