#!/usr/bin/env bash

FILENAME="ghost-backup-$(date +%Y-%m-%d)"

cd /var/lib
tar --verbose --create --file "/backup/${FILENAME}.tar" ghost

echo

cd /backup
xz --verbose -6e ${FILENAME}.tar
