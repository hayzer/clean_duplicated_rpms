#!/bin/bash - 
set -o nounset

if [ ${EUID} -ne 0 ]; then
	echo 'root user priviledges required to run this script' 1>&2
	exit 1
fi

while read list; do
	if ! echo "${list}" | grep -q -E '.*is a duplicate.*' > /dev/null; then
		continue
	fi
	package=$(echo ${list}|awk -F' is a duplicate with ' '{print $2}')
	echo yum erase -y ${package//[0-9]*:/}
done < <(yum check 2>/dev/null)