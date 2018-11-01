#!/bin/bash

set -e 
set -o pipefail

# Create colon separated list of mib files from a directory
MIBFILES=`find ${MIBDIR} -type f | egrep -i "${MIBDIR}/(RFC|SNMP|$VENDOR)" | tr "\n" ":"`

snmptable ${HOST} -v2c -c ${COMMUNITY} -m ${MIBFILES} -Ln ${TABLE} -Cf @ | sed -e '1,/^$/d' -e 's/\"//g' -e 's/,/\\,/g' -e 's/@/,/g'

echo "<!>host,${HOST}"
echo "<!>table,${TABLE}"

