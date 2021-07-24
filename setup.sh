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
echo -e "\n[+] You can execute: revshells commands to print all reverse shells."
echo -e "[+] Done\n"
