#!/bin/sh

HOST="$1"
PORT="$2"

[ -z "$PORT" ] && PORT=389

ldapsearch -x \
  -H "ldap://${HOST}:${PORT}" \
  -b "" -s base "(objectClass=*)" \
  >/dev/null 2>&1

if [ $? -eq 0 ]; then
  echo 1
  exit 0
else
  echo 0
  exit 1
fi
