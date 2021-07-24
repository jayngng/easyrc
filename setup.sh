#!/bin/bash

HOMEDIR="${HOME}/.local/bin"

if [ -d ${HOMEDIR} ]
then
        true
else
	echo "[+] Creating directory: ${HOMEDIR}"
        /usr/bin/mkdir -p ${HOMEDIR}
        export PATH=$HOMEDIR:$PATH
fi

/usr/bin/cp revshells ${HOMEDIR} && /usr/bin/chmod 755 "${HOMEDIR}/revshells"
/usr/bin/cp rmenum ${HOMEDIR} && /usr/bin/chmod 755 "${HOMEDIR}/rmenum"
echo -e "\n[+] You can execute: \n\t+ revshells command to print all reverse shells commands.\n\t+ rmenum command to print all remote enumeration commands."
echo -e "[+] Done\n"
